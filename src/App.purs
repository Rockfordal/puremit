module App where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data (Vnode, State, getVnodeName, setState)
import Mithril
import Prelude (Unit, pure, unit)
import React.DOM.Props (_type, href, placeholder, value)
import Views (footer, navbar)

data Input = Pang | None

initialState :: State
initialState = { name: "Namn", street: "gata" }

app :: { oninit :: Vnode -> Unit, view :: Vnode -> Array MithrilDomNode }
app = {
  oninit: setState initialState,
  view: \vnode ->
    [ m navbar
    , h1 "Mithril + Purescript"
    , input [ _type "text", placeholder "enter Username ", value (getVnodeName vnode) ]
    , input [ _type "password", placeholder "enter password" ]
    , p_ [ text (getVnodeName vnode) ]
    , a [ href "http://www.intel.com", className "success button" ] [ text "Add" ]
    , a [ href "http://www.hp.com", className "warning button" ] [ text "Update" ]
    , button [ _type "button", className "success button", onclick (log "hey!") ] [ text "Test"]
    , button [ _type "button", className "alert button", onclick (dispatch Pang) ] [ text "Radera" ]
    , span [ className "label warning" ] [ text "Varning"]
    , m footer
    ] }

dispatch :: forall e. Input -> Eff ( console :: CONSOLE | e) Unit
dispatch s =
  case s of
    Pang -> log "PANG!"
    None -> pure unit

