-- base
import XMonad

-- config
import XMonad.Config.Desktop

-- hooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

-- layout
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import XMonad.Layout.ToggleLayouts

-- utils
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Util.SpawnOnce

-- custom
import Custom.KeyBindings

-- spacing
myGaps = Border 5 5 5 5
mySpacing = spacingRaw False myGaps True myGaps True

-- layouts
myLayouts = toggleLayouts tile threeCol
  where
    --          layout       nmaster  delta    ratio
    tile      = Tall         1        (5/100)  (50/100)
    threeCol  = ThreeColMid  1        (5/100)  (55/100)

myStartupHook = do
  return ()

-- run xmonad with the configured settings
main :: IO ()
main = do
  xmproc <- spawnPipe "xmobar"
  xmonad $ docks desktopConfig
    -- simple stuff
    { terminal           = "$TERMINAL"
    , focusFollowsMouse  = True
    , clickJustFocuses   = False
    , borderWidth        = 2
    , modMask            = mod4Mask
    , workspaces         = ["dev", "www", "sys", "mus", "chat", "misc", "vid", "doc", "vbox"]
    , normalBorderColor  = "#dddddd"
    , focusedBorderColor = "#ff0000"

    -- hooks, layouts
    , layoutHook         = desktopLayoutModifiers $ avoidStruts $ mySpacing $ myLayouts
    , manageHook         = composeAll[]
    , handleEventHook    = mempty
    , logHook            = dynamicLogWithPP xmobarPP
                           { ppOutput          = hPutStrLn xmproc
                           , ppCurrent         = xmobarColor "#ffffff" "" . wrap "[" "]"
                           , ppVisible         = xmobarColor "#ffffff" ""
                           , ppHiddenNoWindows = xmobarColor "#ffffff" ""
                           , ppSep             = " | "
                           }
    , startupHook        = myStartupHook
    }

    -- keybindings
    `additionalKeysP` myKeyBindings
