; #FUNCTION# ====================================================================================================================
; Name ..........: ArmyHeroStatus
; Description ...: Obtain Status of Heroes, Available, Healing, Upgrading...
; Syntax ........: ArmyHeroStatus($iHeroEnum = $eKing, $bReturnTimeArray = False, $bOpenArmyWindow = False, $bCloseArmyWindow = False)
; Parameters ....: $Hero = enum value for hero to OR Hero name
; Return values .: MR.ViPER (16-10-2016)
; Author ........:
; Modified ......: MR.ViPER (10-12-2016)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
;
Func ArmyHeroStatus($Hero)
	Local $directory = "trainwindow-HeroStatus-bundle"
	Local Const $aHeroesRect[3][4] = [[610, 340, 683, 390], [683, 340, 758, 390], [757, 340, 833, 390]] ; [[643, 340, 683, 390], [718, 340, 758, 390], [749, 340, 833, 390]]
	Local $Result, $Status

	Select
		Case $Hero = "King" Or $Hero = 0 Or $Hero = $eKing
			$Result = SearchArmy($directory, $aHeroesRect[0][0], $aHeroesRect[0][1], $aHeroesRect[0][2], $aHeroesRect[0][3], "", True)
			$Status = $Result[0][0]
				Switch $Status
					Case "heal" ; Yellow
						GUICtrlSetState($g_lblKingStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblKingStatus[$CurrentAccount], $COLOR_YELLOW)

						GUICtrlSetState($g_lblKingStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblKingStatus_Demen[$nCurProfile - 1], $COLOR_YELLOW)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblKingStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblKingStatusPO[$CurrentAccount], $COLOR_YELLOW)
						EndIf
					Case "upgrade" ; Red
						GUICtrlSetState($g_lblKingStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblKingStatus[$CurrentAccount], $COLOR_RED)

						GUICtrlSetState($g_lblKingStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblKingStatus_Demen[$nCurProfile - 1], $COLOR_RED)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblKingStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblKingStatusPO[$CurrentAccount], $COLOR_RED)
						EndIf
					Case "none" ; Hide lbl
						GUICtrlSetState($g_lblKingStatus[$CurrentAccount], $GUI_HIDE)

						GUICtrlSetState($g_lblKingStatus_Demen[$nCurProfile - 1], $GUI_HIDE)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblKingStatusPO[$CurrentAccount], $GUI_HIDE)
						EndIf
					Case Else ; Green
						GUICtrlSetState($g_lblKingStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblKingStatus[$CurrentAccount], $COLOR_GREEN)

						GUICtrlSetState($g_lblKingStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblKingStatus_Demen[$nCurProfile - 1], $COLOR_GREEN)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblKingStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblKingStatusPO[$CurrentAccount], $COLOR_GREEN)
						EndIF
				EndSwitch

			If $Status = "" Then $Status = "king"
			Return $Status
		Case $Hero = "Queen" Or $Hero = 1 Or $Hero = $eQueen
			$Result = SearchArmy($directory, $aHeroesRect[1][0], $aHeroesRect[1][1], $aHeroesRect[1][2], $aHeroesRect[1][3], "", True)
			$Status = $Result[0][0]
				Switch $Status
					Case "heal" ; Yellow
						GUICtrlSetState($g_lblQueenStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblQueenStatus[$CurrentAccount], $COLOR_YELLOW)

						GUICtrlSetState($g_lblQueenStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblQueenStatus_Demen[$nCurProfile - 1], $COLOR_YELLOW)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblQueenStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblQueenStatusPO[$CurrentAccount], $COLOR_YELLOW)
						EndIf
					Case "upgrade" ; Red
						GUICtrlSetState($g_lblQueenStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblQueenStatus[$CurrentAccount], $COLOR_RED)

						GUICtrlSetState($g_lblQueenStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblQueenStatus_Demen[$nCurProfile - 1], $COLOR_RED)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblQueenStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblQueenStatusPO[$CurrentAccount], $COLOR_RED)
						EndIf
					Case "none" ; Hide lbl
						GUICtrlSetState($g_lblQueenStatus[$CurrentAccount], $GUI_HIDE)

						GUICtrlSetState($g_lblQueenStatus_Demen[$nCurProfile - 1], $GUI_HIDE)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblQueenStatusPO[$CurrentAccount], $GUI_HIDE)
						EndIf
					Case Else ; Green
						GUICtrlSetState($g_lblQueenStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblQueenStatus[$CurrentAccount], $COLOR_GREEN)

						GUICtrlSetState($g_lblQueenStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblQueenStatus_Demen[$nCurProfile - 1], $COLOR_GREEN)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblQueenStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblQueenStatusPO[$CurrentAccount], $COLOR_GREEN)
						EndIF
				EndSwitch

			If $Status = "" Then $Status = "queen"
			Return $Status
		Case $Hero = "Warden" Or $Hero = 2 Or $Hero = $eWarden
			$Result = SearchArmy($directory, $aHeroesRect[2][0], $aHeroesRect[2][1], $aHeroesRect[2][2], $aHeroesRect[2][3], "", True)
			$Status = $Result[0][0]
				Switch $Status
					Case "heal" ; Yellow
						GUICtrlSetState($g_lblWardenStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblWardenStatus[$CurrentAccount], $COLOR_YELLOW)

						GUICtrlSetState($g_lblWardenStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblWardenStatus_Demen[$nCurProfile - 1], $COLOR_YELLOW)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblWardenStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblWardenStatusPO[$CurrentAccount], $COLOR_YELLOW)
						EndIf
					Case "upgrade" ; Red
						GUICtrlSetState($g_lblWardenStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblWardenStatus[$CurrentAccount], $COLOR_RED)

						GUICtrlSetState($g_lblWardenStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblWardenStatus_Demen[$nCurProfile - 1], $COLOR_RED)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblWardenStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblWardenStatusPO[$CurrentAccount], $COLOR_RED)
						EndIf
					Case "none" ; Hide lbl
						GUICtrlSetState($g_lblWardenStatus[$CurrentAccount], $GUI_HIDE)

						GUICtrlSetState($g_lblWardenStatus_Demen[$nCurProfile - 1], $GUI_HIDE)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblWardenStatusPO[$CurrentAccount], $GUI_HIDE)
						EndIf
					Case Else ; Green
						GUICtrlSetState($g_lblWardenStatus[$CurrentAccount], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblWardenStatus[$CurrentAccount], $COLOR_GREEN)

						GUICtrlSetState($g_lblWardenStatus_Demen[$nCurProfile - 1], $GUI_SHOW)
						GUICtrlSetBkColor($g_lblWardenStatus_Demen[$nCurProfile - 1], $COLOR_GREEN)

						If WinGetState(Eval($hGuiPopOut & $CurrentAccount)) <> -1 Then
							GUICtrlSetState($g_lblWardenStatusPO[$CurrentAccount], $GUI_SHOW)
							GUICtrlSetBkColor($g_lblWardenStatusPO[$CurrentAccount], $COLOR_GREEN)
						EndIF
				EndSwitch

			If $Status = "" Then $Status = "warden"
			Return $Status
	EndSelect
EndFunc   ;==>ArmyHeroStatus

Func CountHeroes()
	Local $directory =  "trainwindow-HeroStatus-bundle"
	Local Const $aHeroesRect[3][4] = [[643, 340, 683, 390], [718, 340, 758, 390], [749, 340, 833, 390]]
	Local $Result, $Status
	Local $Available = 0, $Healing = 0, $Upgrading = 0, $None = 0, $AvaiAndHealing = 0
	Local $ToReturn[5] = [$Available, $Healing, $Upgrading, $None, $AvaiAndHealing]
	For $i = 0 To (UBound($aHeroesRect) - 1)
		$Result = SearchArmy($directory, $aHeroesRect[$i][0], $aHeroesRect[$i][1], $aHeroesRect[$i][2], $aHeroesRect[$i][3], "", True)
		$Status = $Result[0][0]
		Switch $Status
			Case "heal"
				$Healing += 1
			Case "upgrade"
				$Upgrading += 1
			Case "none"
				$None += 1
			Case Else
				$Available += 1
		EndSwitch
	Next
	$AvaiAndHealing = Number($Available + $Healing)
	$ToReturn[0] = $Available
	$ToReturn[1] = $Healing
	$ToReturn[2] = $Upgrading
	$ToReturn[3] = $None
	$ToReturn[4] = $AvaiAndHealing
	Return $ToReturn
EndFunc   ;==>CountHeroes
