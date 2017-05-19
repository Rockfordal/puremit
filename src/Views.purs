module Views where
import Data (Vnode)
import Mithril (MithrilDomNode, a, className, div_, h1, hr, i, li, li_, span_, text, ul)
import React.DOM.Props (href)


navbar :: { view :: Vnode -> Array MithrilDomNode }
navbar = { view: \ctrl ->
  [ ul [ className "menu" ]
    [ li [ className "active" ] [ a [ href "http://www.google.se" ] [ text "Hem" ] ]
    , li_ [ a [ href "http://www.amd.com" ] [ text "Amd" ] ]
    , li_ [ a [ href "http://www.nvidia.com" ]
            [ i [ className "fa fa-money" ] [ span_ "Two" ] ] ]
    , li_ [ a [ href "http://www.hp.com" ]
            [ i [ className "hej" ] [ span_ "Three" ] ] ]
    ]]}


footer :: { view :: Vnode -> Array MithrilDomNode }
footer = { view: \ctrl ->
    [ div_
      [ hr
      , h1 "Footer"
      ]
    ]}