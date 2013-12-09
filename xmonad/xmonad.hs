import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.SetWMName
--import XMonad.Layout.SimpleFloat
--import XMonad.Layout.NoBorders    (noBorders)
--import XMonad.Layout.PerWorkspace (onWorkspace)
--import qualified XMonad.StackSet as W
--import Control.Monad


main = xmonad =<< statusBar myBar myPP toggleStrutsKey defaults 

myBar = "xmobar"

myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

defaults = defaultConfig {
        modMask = mod4Mask,
        borderWidth = 0,
--        normalBorderColor = "#abc123",
--        focusedBorderColor = "#456def",
--        manageHook = myManageHook,
--        layoutHook = myLayouts,
--        workspaces = myWorkspaces,
        terminal = "urxvt",
	startupHook = setWMName "LG3D"
    }

--myManageHook :: ManageHook
--myManageHook = composeAll . concat $
--    [
--        [ className =? a --> viewShift "web"      | a <- classWeb  ],
--        [ className =? a --> viewShift "media"    | a <- classMedia  ]
--    ]
--    where
--        viewShift = doF . liftM2 (.) W.greedyView W.shift
--        classWeb  = ["google-chrome"]
--        classMedia = ["mplayer2"]
--
--mediaLayout = noBorders $ Full
--myLayouts = onWorkspace "media" mediaLayout $ defaultLayouts
--
--defaultLayouts = tiled ||| Mirror tiled ||| simpleFloat ||| Full
--    where
--        tiled   = Tall nmaster delta ratio
--        nmaster = 1
--        ratio   = 1/2
--        delta   = 3/100

--myWorkspaces = ["main","web","media","dev"]

--
--keysToAdd = [ ((mod4Mask, xK_KP_Add), spawn "amixer set Master 5+"), ((mod4Mask, xK_KP_Subtract), spawn "amixer set Master 5-")]               
