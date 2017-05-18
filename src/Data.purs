module Data where
import Prelude (Unit)

type Vnode = { state :: State }
type State = { name :: String, street :: String }

setInitialState :: Vnode -> Unit
setInitialState = setState { name: "Namn", street: "gata" }

foreign import getVnodeName :: Vnode -> String
foreign import setState :: State -> Vnode -> Unit
foreign import toggla :: Unit
