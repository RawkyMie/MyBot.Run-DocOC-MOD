; #FUNCTION# ====================================================================================================================
; Name ..........: applyConfig.au3
; Description ...: Applies all of the  variable to the GUI
; Syntax ........: applyConfig()
; Parameters ....: $bRedrawAtExit = True, redraws bot window after config was applied
; Return values .: NA
; Author ........: NguyenAnhHD, Demen
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func ApplyConfig_MOD($TypeReadSave)
	; <><><> DocOc++ Team MOD (NguyenAnhHD, Demen) <><><>
	Switch $TypeReadSave
		Case "Read"
			; Auto Hide (NguyenAnhHD) - Added by NguyenAnhHD
			GUICtrlSetState($g_hChkAutohide, $ichkAutoHide = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($g_hTxtAutohideDelay, $ichkAutoHideDelay)
			chkAutoHide()

			; Check Collector Outside (McSlither) - Added by NguyenAnhHD
			GUICtrlSetState($g_hChkDBMeetCollOutside, $ichkDBMeetCollOutside = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($g_hTxtDBMinCollOutsidePercent, $iDBMinCollOutsidePercent)
			chkDBMeetCollOutside()

			; CSV Deploy Speed (Roro-Titi) - Added by NguyenAnhHD
			_GUICtrlComboBox_SetCurSel($g_hCmbCSVSpeed[$DB], $g_iCmbCSVSpeed[$DB])
			_GUICtrlComboBox_SetCurSel($g_hCmbCSVSpeed[$LB], $g_iCmbCSVSpeed[$LB])

			; Smart Upgarde (Roro-Titi) - Added by NguyenAnhHD
			GUICtrlSetState($g_hChkSmartUpgrade, $ichkSmartUpgrade = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			chkSmartUpgrade()

			GUICtrlSetData($SmartMinGold, $iSmartMinGold)
			GUICtrlSetData($SmartMinElixir, $iSmartMinElixir)
			GUICtrlSetData($SmartMinDark, $iSmartMinDark)

			GUICtrlSetState($g_hChkIgnoreTH, $ichkIgnoreTH = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreKing, $ichkIgnoreKing = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreQueen, $ichkIgnoreQueen = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreWarden, $ichkIgnoreWarden = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreCC, $ichkIgnoreCC = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreLab, $ichkIgnoreLab = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreBarrack, $ichkIgnoreBarrack = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreDBarrack, $ichkIgnoreDBarrack = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreFactory, $ichkIgnoreFactory = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreDFactory, $ichkIgnoreDFactory = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreGColl, $ichkIgnoreGColl = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreEColl, $ichkIgnoreEColl = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hChkIgnoreDColl, $ichkIgnoreDColl = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			chkSmartUpgrade()

			; Switch Profile (IceCube) - Added by NguyenAnhHD
			GUICtrlSetState($g_hChkGoldSwitchMax, $ichkGoldSwitchMax = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbGoldMaxProfile, $icmbGoldMaxProfile)
			GUICtrlSetData($g_hTxtMaxGoldAmount, $itxtMaxGoldAmount)
			GUICtrlSetState($g_hChkGoldSwitchMin, $ichkGoldSwitchMin = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbGoldMinProfile, $icmbGoldMinProfile)
			GUICtrlSetData($g_hTxtMinGoldAmount, $itxtMinGoldAmount)

			GUICtrlSetState($g_hChkElixirSwitchMax, $ichkElixirSwitchMax = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbElixirMaxProfile, $icmbElixirMaxProfile)
			GUICtrlSetData($g_hTxtMaxElixirAmount, $itxtMaxElixirAmount)
			GUICtrlSetState($g_hChkElixirSwitchMin, $ichkElixirSwitchMin = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbElixirMinProfile, $icmbElixirMinProfile)
			GUICtrlSetData($g_hTxtMinElixirAmount, $itxtMinElixirAmount)

			GUICtrlSetState($g_hChkDESwitchMax, $ichkDESwitchMax = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbDEMaxProfile, $icmbDEMaxProfile)
			GUICtrlSetData($g_hTxtMaxDEAmount, $itxtMaxDEAmount)
			GUICtrlSetState($g_hChkDESwitchMin, $ichkDESwitchMin = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbDEMinProfile, $icmbDEMinProfile)
			GUICtrlSetData($g_hTxtMinDEAmount, $itxtMinDEAmount)

			GUICtrlSetState($g_hChkTrophySwitchMax, $ichkTrophySwitchMax = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbTrophyMaxProfile, $icmbTrophyMaxProfile)
			GUICtrlSetData($g_hTxtMaxTrophyAmount, $itxtMaxTrophyAmount)
			GUICtrlSetState($g_hChkTrophySwitchMin, $ichkTrophySwitchMin = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($g_hCmbTrophyMinProfile, $icmbTrophyMinProfile)
			GUICtrlSetData($g_hTxtMinTrophyAmount, $itxtMinTrophyAmount)

			; SimpleTrain (Demen) - Added by Demen
			GUICtrlSetState($g_hchkSimpleTrain, $ichkSimpleTrain = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hchkPreciseTroops, $ichkPreciseTroops = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($g_hchkFillArcher, $ichkFillArcher = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($g_htxtFillArcher, $iFillArcher)
			GUICtrlSetState($g_hchkFillEQ, $ichkFillEQ = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			chkSimpleTrain()

		Case "Save"
			; Auto Hide (NguyenAnhHD) - Added by NguyenAnhHD
			$ichkAutoHide = GUICtrlRead($g_hChkAutohide) = $GUI_CHECKED ? 1 : 0
			$ichkAutoHideDelay = GUICtrlRead($g_hTxtAutohideDelay)

			; Check Collector Outside (McSlither) - Added by NguyenAnhHD
			$ichkDBMeetCollOutside = GUICtrlRead($g_hChkDBMeetCollOutside) = $GUI_CHECKED ? 1 : 0
			$iDBMinCollOutsidePercent = GUICtrlRead($g_hTxtDBMinCollOutsidePercent)

			; CSV Deploy Speed (Roro-Titi) - Added by NguyenAnhHD
			$g_iCmbCSVSpeed[$DB] = _GUICtrlComboBox_GetCurSel($g_hCmbCSVSpeed[$DB])
			$g_iCmbCSVSpeed[$LB] = _GUICtrlComboBox_GetCurSel($g_hCmbCSVSpeed[$LB])

			; Smart Upgarde (Roro-Titi) - Added by NguyenAnhHD
			$ichkSmartUpgrade = GUICtrlRead($g_hChkSmartUpgrade) = $GUI_CHECKED ? 1 : 0

			$iSmartMinGold = GUICtrlRead($SmartMinGold)
			$iSmartMinElixir = GUICtrlRead($SmartMinElixir)
			$iSmartMinDark = GUICtrlRead($SmartMinDark)

			$ichkIgnoreTH = GUICtrlRead($g_hChkIgnoreTH) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreKing = GUICtrlRead($g_hChkIgnoreKing) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreQueen = GUICtrlRead($g_hChkIgnoreQueen) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreWarden = GUICtrlRead($g_hChkIgnoreWarden) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreCC = GUICtrlRead($g_hChkIgnoreCC) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreLab = GUICtrlRead($g_hChkIgnoreLab) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreBarrack = GUICtrlRead($g_hChkIgnoreBarrack) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreDBarrack = GUICtrlRead($g_hChkIgnoreDBarrack) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreFactory = GUICtrlRead($g_hChkIgnoreFactory) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreDFactory = GUICtrlRead($g_hChkIgnoreDFactory) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreGColl = GUICtrlRead($g_hChkIgnoreGColl) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreEColl = GUICtrlRead($g_hChkIgnoreEColl) = $GUI_CHECKED ? 1 : 0
			$ichkIgnoreDColl = GUICtrlRead($g_hChkIgnoreDColl) = $GUI_CHECKED ? 1 : 0

			; Switch Profile (IceCube) - Added by NguyenAnhHD
			$ichkGoldSwitchMax = GUICtrlRead($g_hChkGoldSwitchMax) = $GUI_CHECKED ? 1 : 0
			$itxtMaxGoldAmount = GUICtrlRead($g_hTxtMaxGoldAmount)
			$ichkGoldSwitchMin = GUICtrlRead($g_hChkGoldSwitchMin) = $GUI_CHECKED ? 1 : 0
			$itxtMinGoldAmount = GUICtrlRead($g_hTxtMinGoldAmount)

			$ichkElixirSwitchMax = GUICtrlRead($g_hChkElixirSwitchMax) = $GUI_CHECKED ? 1 : 0
			$itxtMaxElixirAmount = GUICtrlRead($g_hTxtMaxElixirAmount)
			$ichkElixirSwitchMin = GUICtrlRead($g_hChkElixirSwitchMin) = $GUI_CHECKED ? 1 : 0
			$itxtMinElixirAmount = GUICtrlRead($g_hTxtMinElixirAmount)

			$ichkDESwitchMax = GUICtrlRead($g_hChkDESwitchMax) = $GUI_CHECKED ? 1 : 0
			$itxtMaxDEAmount = GUICtrlRead($g_hTxtMaxDEAmount)
			$ichkDESwitchMin = GUICtrlRead($g_hChkDESwitchMin) = $GUI_CHECKED ? 1 : 0
			$itxtMinDEAmount = GUICtrlRead($g_hTxtMinDEAmount)

			$ichkTrophySwitchMax = GUICtrlRead($g_hChkTrophySwitchMax) = $GUI_CHECKED ? 1 : 0
			$itxtMaxTrophyAmount = GUICtrlRead($g_hTxtMaxTrophyAmount)
			$ichkTrophySwitchMin = GUICtrlRead($g_hChkTrophySwitchMin) = $GUI_CHECKED ? 1 : 0
			$itxtMinTrophyAmount = GUICtrlRead($g_hTxtMinTrophyAmount)

			;SimpleTrain (Demen) - Added by Demen
			$ichkSimpleTrain = GUICtrlRead($g_hchkSimpleTrain) = $GUI_CHECKED ? 1 : 0
			$ichkPreciseTroops = GUICtrlRead($g_hchkPreciseTroops) = $GUI_CHECKED ? 1 : 0
			$ichkFillArcher = GUICtrlRead($g_hchkFillArcher) = $GUI_CHECKED ? 1 : 0
			$iFillArcher = GUICtrlRead($g_htxtFillArcher)
			$ichkFillEQ = GUICtrlRead($g_hchkFillEQ) = $GUI_CHECKED ? 1 : 0
	EndSwitch
EndFunc

Func ApplyConfig_SwitchAcc($TypeReadSave, $SwitchAcc_Style = False)
	; <><><> SwitchAcc_Demen_Style <><><>
	Switch $TypeReadSave
		Case "Read"
			If $SwitchAcc_Style = True Then
				GUICtrlSetState($g_hRdoSwitchAcc_DocOc, $iSwitchAccStyle = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
				GUICtrlSetState($g_hRdoSwitchAcc_Demen, $iSwitchAccStyle = 2 ? $GUI_CHECKED : $GUI_UNCHECKED)
				RdoSwitchAcc_Style()
			EndIf
			GUICtrlSetState($chkSwitchAcc, $ichkSwitchAcc = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($chkTrain, $ichkTrain = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)
			If $ichkSmartSwitch = 1 Then
			   GUICtrlSetState($radSmartSwitch, $GUI_CHECKED)
			Else
			   GUICtrlSetState($radNormalSwitch, $GUI_CHECKED)
			EndIf
			radNormalSwitch()
			_GUICtrlCombobox_SetCurSel($cmbTotalAccount, $icmbTotalCoCAcc - 1)
			If $ichkCloseTraining >= 1 Then
				GUICtrlSetState($chkUseTrainingClose, $GUI_CHECKED)
				If $ichkCloseTraining = 1 Then
					GUICtrlSetState($radCloseCoC, $GUI_CHECKED)
				Else
					GUICtrlSetState($radCloseAndroid, $GUI_CHECKED)
				EndIf
			Else
				GUICtrlSetState($chkUseTrainingClose, $GUI_UNCHECKED)
			EndIf
			For $i = 0 to 7
				_GUICtrlCombobox_SetCurSel($cmbAccountNo[$i], $aMatchProfileAcc[$i]-1)
				_GUICtrlCombobox_SetCurSel($cmbProfileType[$i], $aProfileType[$i]-1)
			Next

		Case "Save"
			If $SwitchAcc_Style = True Then
				If GUICtrlRead($g_hRdoSwitchAcc_DocOc) = $GUI_CHECKED Then
					$iSwitchAccStyle = 1
				ElseIf GUICtrlRead($g_hRdoSwitchAcc_Demen) = $GUI_CHECKED Then
					$iSwitchAccStyle = 2
				EndIf
			EndIf
			$ichkSwitchAcc = GUICtrlRead($chkSwitchAcc) = $GUI_CHECKED ? 1 : 0
			$ichkTrain = GUICtrlRead($chkTrain) = $GUI_CHECKED ? 1 : 0
			$icmbTotalCoCAcc = _GUICtrlCombobox_GetCurSel($cmbTotalAccount)+1
			$ichkSmartSwitch = GUICtrlRead($radSmartSwitch) = $GUI_CHECKED ? 1 : 0
			$ichkCloseTraining = GUICtrlRead($chkUseTrainingClose) = $GUI_CHECKED ? 1 : 0
			If $ichkCloseTraining = 1 Then
				$ichkCloseTraining = GUICtrlRead($radCloseCoC) = $GUI_CHECKED ? 1 : 2
			EndIf
	EndSwitch
EndFunc
