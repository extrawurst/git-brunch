module Theme
  ( theme
  )
where

import           Brick.AttrMap                  ( attrName )
import           Brick.Themes
import           Brick.Util
import           Graphics.Vty
import qualified Brick.Widgets.Dialog          as Dialog
import qualified Brick.Widgets.List            as List
import           Brick.Widgets.Border          as Border

theme :: Theme
theme = newTheme
  (white `on` brightBlack)
  [ (List.listAttr               , fg brightWhite)
  , (List.listSelectedAttr       , fg brightWhite)
  , (List.listSelectedFocusedAttr, black `on` brightYellow)
  , (Dialog.dialogAttr           , fg brightWhite)
  , (Dialog.buttonAttr           , brightBlack `on` white)
  , (Dialog.buttonSelectedAttr   , black `on` brightMagenta)
  , (Border.borderAttr           , fg white)
  , (attrName "key"              , withStyle (fg brightMagenta) bold)
  , (attrName "bold"             , withStyle (fg white) bold)
  , (attrName "under"            , withStyle (fg brightWhite) underline)
  , (attrName "current"          , fg brightRed)
  , (attrName "title"            , withStyle (fg brightWhite) bold)
  , (attrName "title-focus"      , withStyle (fg yellow) bold)
  ]

