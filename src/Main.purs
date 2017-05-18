module Main where

import Mithril
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data (Vnode, getVnodeName, setInitialState)
import Prelude (Unit, pure, unit)
import React.DOM.Props (_type, href, placeholder, value)
import Views (footer, navbar)

app :: { oninit :: Vnode -> Unit, view :: Vnode -> Array MithrilDomNode }
-- app :: forall t3 t4. { oninit :: Vnode -> Unit, toggle :: t4 -> Eff ( console :: CONSOLE | t3) Unit, view :: Vnode -> Array MithrilDomNode }
app = {
  oninit: setInitialState,
  -- toggle: log "ajabaja",
  view: \vnode ->
  [ div_
    [ mc navbar
    , h1 "Mithril + Purescript"
    , input [ _type "text", placeholder "enter Username ", value (getVnodeName vnode) ]
    , input [ _type "password", placeholder "enter password" ]
    , p_ [ text (getVnodeName vnode) ]
    , mp "a" [ href "http://www.intel.com", className "success button" ] [ text "Add" ]
    , mp "a" [ href "http://www.hp.com", className "warning button" ] [ text "Update" ]
    , mp "button" [ _type "button", className "success button", onclick (log "hej") ] [ text "Test"]
    , mp "button" [ _type "button", className "alert button", onclick (dispatch "logga") ] [ text "Radera" ]
    , mp_ "span.label.warning" [ text "Warning"]
    , mc footer
    ]
  ] }

dispatch :: forall e. String -> Eff ( console :: CONSOLE | e) Unit
dispatch s = do
  case s of
    "logga" -> log "PANG!"
    _       -> pure unit


-- input [ onInput (withAttr "value" setName ) ]

main :: forall a e. a -> Eff (action :: MithrilAction | e) {}
main = \_ -> mithrilMount "main" app

