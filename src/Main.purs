module Main where

import Mithril (MithrilAction, mithrilMount)
import Control.Monad.Eff (Eff)
import App (app)

main :: forall a e. a -> Eff (action :: MithrilAction | e) {}
main = \_ -> mithrilMount "main" app

