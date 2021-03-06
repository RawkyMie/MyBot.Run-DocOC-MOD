; #FUNCTION# ====================================================================================================================
; Name ..........: readConfig.au3
; Description ...: Reads config file and sets variables
; Syntax ........: readConfig()
; Parameters ....: NA
; Return values .: NA
; Author ........: NguyenAnhHD, Demen
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func ReadConfig_MOD()
	; <><><> DocOc++ Team MOD (NguyenAnhHD, Demen) <><><>
	; Auto Hide (NguyenAnhHD) - Added by NguyenAnhHD
	IniReadS($ichkAutoHide, $g_sProfileConfigPath, "general", "AutoHide", 0, "int")
	IniReadS($ichkAutoHideDelay, $g_sProfileConfigPath, "general", "AutoHideDelay", 10, "int")

	; Check Collector Outside (McSlither) - Added by NguyenAnhHD
	IniReadS($ichkDBMeetCollOutside, $g_sProfileConfigPath, "search", "DBMeetCollOutside", 0, "int")
	IniReadS($iDBMinCollOutsidePercent, $g_sProfileConfigPath, "search", "DBMinCollOutsidePercent", 50, "int")

	; CSV Deploy Speed (Roro-Titi) - Added by NguyenAnhHD
	$g_iCmbCSVSpeed[$DB] = Int(IniRead($g_sProfileConfigPath, "DeploymentSpeed", "DB", 2))
	$g_iCmbCSVSpeed[$LB] = Int(IniRead($g_sProfileConfigPath, "DeploymentSpeed", "LB", 2))

	; Smart Upgrade (Roro-Titi) - Added by NguyenAnhHD
	IniReadS($ichkSmartUpgrade, $g_sProfileConfigPath, "upgrade", "chkSmartUpgrade", 0, "int")
	IniReadS($ichkIgnoreTH, $g_sProfileConfigPath, "upgrade", "chkIgnoreTH", 0, "int")
	IniReadS($ichkIgnoreKing, $g_sProfileConfigPath, "upgrade", "chkIgnoreKing", 0, "int")
	IniReadS($ichkIgnoreQueen, $g_sProfileConfigPath, "upgrade", "chkIgnoreQueen", 0, "int")
	IniReadS($ichkIgnoreWarden, $g_sProfileConfigPath, "upgrade", "chkIgnoreWarden", 0, "int")
	IniReadS($ichkIgnoreCC, $g_sProfileConfigPath, "upgrade", "chkIgnoreCC", 0, "int")
	IniReadS($ichkIgnoreLab, $g_sProfileConfigPath, "upgrade", "chkIgnoreLab", 0, "int")
	IniReadS($ichkIgnoreBarrack, $g_sProfileConfigPath, "upgrade", "chkIgnoreBarrack", 0, "int")
	IniReadS($ichkIgnoreDBarrack, $g_sProfileConfigPath, "upgrade", "chkIgnoreDBarrack", 0, "int")
	IniReadS($ichkIgnoreFactory, $g_sProfileConfigPath, "upgrade", "chkIgnoreFactory", 0, "int")
	IniReadS($ichkIgnoreDFactory, $g_sProfileConfigPath, "upgrade", "chkIgnoreDFactory", 0, "int")
	IniReadS($ichkIgnoreGColl, $g_sProfileConfigPath, "upgrade", "chkIgnoreGColl", 0, "int")
	IniReadS($ichkIgnoreEColl, $g_sProfileConfigPath, "upgrade", "chkIgnoreEColl", 0, "int")
	IniReadS($ichkIgnoreDColl, $g_sProfileConfigPath, "upgrade", "chkIgnoreDColl", 0, "int")
	IniReadS($iSmartMinGold, $g_sProfileConfigPath, "upgrade", "SmartMinGold", 200000, "int")
	IniReadS($iSmartMinElixir, $g_sProfileConfigPath, "upgrade", "SmartMinElixir", 200000, "int")
	IniReadS($iSmartMinDark, $g_sProfileConfigPath, "upgrade", "SmartMinDark", 1500, "int")

	; Switch Profile (IceCube) - Added by NguyenAnhHD
	IniReadS($ichkGoldSwitchMax, $g_sProfileConfigPath, "profiles", "chkGoldSwitchMax", 0, "int")
	IniReadS($itxtMaxGoldAmount, $g_sProfileConfigPath, "profiles", "txtMaxGoldAmount", 6000000, "int")
	IniReadS($ichkGoldSwitchMin, $g_sProfileConfigPath, "profiles", "chkGoldSwitchMin", 0, "int")
	IniReadS($itxtMinGoldAmount, $g_sProfileConfigPath, "profiles", "txtMinGoldAmount", 500000, "int")

	IniReadS($ichkElixirSwitchMax, $g_sProfileConfigPath, "profiles", "chkElixirSwitchMax", 0, "int")
	IniReadS($itxtMaxElixirAmount, $g_sProfileConfigPath, "profiles", "txtMaxElixirAmount", 6000000, "int")
	IniReadS($ichkElixirSwitchMin, $g_sProfileConfigPath, "profiles", "chkElixirSwitchMin", 0, "int")
	IniReadS($itxtMinElixirAmount, $g_sProfileConfigPath, "profiles", "txtMinElixirAmount", 500000, "int")

	IniReadS($ichkDESwitchMax, $g_sProfileConfigPath, "profiles", "chkDESwitchMax", 0, "int")
	IniReadS($itxtMaxDEAmount, $g_sProfileConfigPath, "profiles", "txtMaxDEAmount", 200000, "int")
	IniReadS($ichkDESwitchMin, $g_sProfileConfigPath, "profiles", "chkDESwitchMin", 0, "int")
	IniReadS($itxtMinDEAmount, $g_sProfileConfigPath, "profiles", "txtMinDEAmount", 10000, "int")

	IniReadS($ichkTrophySwitchMax, $g_sProfileConfigPath, "profiles", "chkTrophySwitchMax", 0, "int")
	IniReadS($itxtMaxTrophyAmount, $g_sProfileConfigPath, "profiles", "txtMaxTrophyAmount", 3000, "int")
	IniReadS($ichkTrophySwitchMin, $g_sProfileConfigPath, "profiles", "chkTrophySwitchMin", 0, "int")
	IniReadS($itxtMinTrophyAmount, $g_sProfileConfigPath, "profiles", "txtMinTrophyAmount", 1000, "int")

	; SimpleTrain (Demen) - Added by Demen
	IniReadS($ichkSimpleTrain, $g_sProfileConfigPath, "SimpleTrain", "Enable", 0, "int")
	IniReadS($ichkPreciseTroops, $g_sProfileConfigPath, "SimpleTrain", "PreciseTroops", 0, "int")
	IniReadS($ichkFillArcher, $g_sProfileConfigPath, "SimpleTrain", "ChkFillArcher", 0, "int")
	IniReadS($iFillArcher, $g_sProfileConfigPath, "SimpleTrain", "FillArcher", 5, "int")
	IniReadS($ichkFillEQ, $g_sProfileConfigPath, "SimpleTrain", "FillEQ", 0, "int")

EndFunc

Func ReadConfig_SwitchAcc($SwitchAcc_Style = False)
	; <><><> SwitchAcc_Demen_Style <><><>
	If $SwitchAcc_Style = True Then IniReadS($iSwitchAccStyle, $Profile, "SwitchAcc_Demen_Style", "SwitchType", 1, "int")

	IniReadS($ichkSwitchAcc, $profile, "SwitchAcc_Demen_Style", "Enable", 0, "int")
	IniReadS($ichkTrain, $profile, "SwitchAcc_Demen_Style", "Pre-train", 0, "int")
	IniReadS($icmbTotalCoCAcc, $profile, "SwitchAcc_Demen_Style", "Total Coc Account", -1, "int")
	IniReadS($ichkSmartSwitch, $profile, "SwitchAcc_Demen_Style", "Smart Switch", 0, "int")
	IniReads($ichkCloseTraining, $profile, "SwitchAcc_Demen_Style", "Sleep Combo", 0, "int")	; Sleep Combo, 1 = Close CoC, 2 = Close Android, 0 = No sleep
	For $i = 0 to 7
		IniReadS($aMatchProfileAcc[$i], $profile, "SwitchAcc_Demen_Style", "MatchProfileAcc." & $i+1, -1, "int")
		IniReadS($aProfileType[$i], $profile, "SwitchAcc_Demen_Style", "ProfileType." & $i+1, -1, "int")
		IniReadS($aAccPosY[$i], $profile, "SwitchAcc_Demen_Style", "AccLocation." & $i+1, -1, "int")
	Next
EndFunc