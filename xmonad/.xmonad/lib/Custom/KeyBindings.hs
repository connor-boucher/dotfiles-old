module Custom.KeyBindings where

-- base
import           XMonad
import           System.Exit
import qualified XMonad.StackSet as W

-- layouts
import           XMonad.Layout.ToggleLayouts

-- key bindings
myKeyBindings :: [(String, X ())]
myKeyBindings =

    -- program bindings
    [ ("M-b", spawn "$BROWSER")                               -- launch a web browser
    , ("M-d", spawn "discord")                                -- launch discord
    , ("M-f", spawn "$TERMINAL -e lf")                        -- launch a file manager
    , ("M-n", spawn "$TERMINAL -e ncmpcpp")                   -- launch a music player
    , ("M-p", spawn "$TERMINAL -e pulsemixer")                -- launch an audio mixer
    , ("M-r", spawn "dmenu_run")                              -- launch dmenu
    , ("M-t", spawn "$TERMINAL")                              -- launch a terminal

    -- xmonad bindings
    , ("M-S-q", io (exitWith ExitSuccess))                    -- quit xmonad
    , ("M-S-r", spawn "xmonad --recompile; xmonad --restart") -- recompile and restart xmonad

    , ("M-w", kill)                                           -- close the focused window

    , ("M-j", windows W.focusDown)                            -- move focus to the next window
    , ("M-k", windows W.focusUp)                              -- move focus to the previous window
    , ("M-m", windows W.focusMaster)                          -- move focus to the master window

    , ("M-S-j", windows W.swapDown)                           -- swap the focused window with the next window
    , ("M-S-k", windows W.swapUp)                             -- swap the focused window with the previous window
    , ("M-<Space>", windows W.swapMaster)                     -- swap the focused window and the master window

    , ("M-h", sendMessage Shrink)                             -- shrink the master area
    , ("M-l", sendMessage Expand)                             -- expand the master area

    , ("M-S-t", withFocused $ windows . W.sink)               -- push window back into tiling

    , ("M-<Tab>", sendMessage ToggleLayout)                   -- toggle between the configured layouts
    ]
