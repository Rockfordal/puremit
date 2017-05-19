module Mithril where

import Control.Monad.Eff
import Control.Monad.Eff.Console (CONSOLE)
import Data (Vnode)
import Prelude (Unit)
import React.DOM.Props (Props, unsafeMkProps)
-- import Data.Function (on)

foreign import data Request :: Effect

foreign import mithrilRequest :: forall e. { method :: String, url :: String } -> Eff (request :: Request | e) {}

foreign import data MithrilDomNode :: Type

foreign import a :: Array Props -> Array MithrilDomNode -> MithrilDomNode
foreign import i :: Array Props -> Array MithrilDomNode -> MithrilDomNode
foreign import ul :: Array Props -> Array MithrilDomNode -> MithrilDomNode
foreign import li :: Array Props -> Array MithrilDomNode -> MithrilDomNode

foreign import h1 :: String -> MithrilDomNode
foreign import text :: String -> MithrilDomNode

foreign import li_ :: Array MithrilDomNode -> MithrilDomNode
foreign import div_ :: Array MithrilDomNode -> MithrilDomNode
foreign import p_ :: Array MithrilDomNode -> MithrilDomNode
foreign import br :: MithrilDomNode
foreign import hr :: MithrilDomNode
foreign import span_ :: String -> MithrilDomNode

foreign import input :: Array Props -> MithrilDomNode

foreign import span :: Array Props -> Array MithrilDomNode -> MithrilDomNode
foreign import button :: Array Props -> Array MithrilDomNode -> MithrilDomNode
-- foreign import m  :: String -> Array Props -> Array MithrilDomNode -> MithrilDomNode
foreign import mp :: String -> Array Props -> Array MithrilDomNode -> MithrilDomNode
foreign import mp_ :: String -> Array MithrilDomNode -> MithrilDomNode
foreign import m_ :: String -> MithrilDomNode
foreign import m :: { view :: Vnode -> Array MithrilDomNode } -> MithrilDomNode

-- foreign import withAttr :: String -> String ->

foreign import data MithrilAction :: Effect

-- foreign import mithrilMount :: forall a b c e f. String -> { page_list :: a, controller :: b, view :: c | e} -> Eff (action :: MithrilAction | f) {}
foreign import mithrilMount :: forall c e f. String -> { view :: c | e} -> Eff (action :: MithrilAction | f) {}


className :: String -> Props
className = unsafeMkProps "class"

onclick :: forall e. Eff ( console :: CONSOLE | e) Unit -> Props
onclick f = unsafeMkProps "onclick" f

