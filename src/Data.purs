module Data where
import Prelude (Unit)

type Vnode = { state :: State }
type State = { name :: String, street :: String }

foreign import getVnodeName :: Vnode -> String
foreign import setState :: State -> Vnode -> Unit
foreign import toggla :: Unit
