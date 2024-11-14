#Persistent
CoordMode, Pixel, Screen
SetDefaultMouseSpeed, 0
SetMouseDelay, -1
WindowClass := "Qt5158QWindowOwnDCIcon"
caminho := A_ScriptDir
niveltransparencia := 1
OnExit("Sair")
Sair()
{
	niveltransparencia := 255
	WinSet, Transparent, %niveltransparencia%, ahk_class Qt5158QWindowOwnDCIcon
	ExitApp
}
WinSet, Transparent, %niveltransparencia%, ahk_class Qt5158QWindowOwnDCIcon

; ======================================================================================================
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ████████████████HOTKEYS███████████████████████████████████████████████████████████████████████████████
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ======================================================================================================

hkmassan := "{f6}"
hkruna := "{f4}"

hkutanihur := "{r}"
hkfood := "{l}"

hkcura := "{}" ; essa é a sua cura principal
hkcura2 := "{}" ; essa é a sua cura secundaria 
hkvidapot := "{f}" ; ultimate spirit
hkvidapot2:= "{}"  ; great spirit 
hkmanapot := "{f2}"

hkring := "{f7}"
hkcolar := "{i}"

hkmr := "{6}"
hkssa := "{7}"
hkenergyring := "{'}"

hkrefilflecha := "{u}"


; ======================================================================================================
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ███████████████████Coordenadas ███████████████████████████████████████████████████████████████████████
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ======================================================================================================

coordx_exura := 		; cordenada x de onde voce quer que use a cura principal
coordy_exura :=         ; cordenada y de onde voce quer que use a cura principal


coordx_exura2 :=        ; cordenada x de onde voce que use a cura secundaria 
coordy_exura2 := 		; cordenada y de onde voce quer que use a cura secundaria 


coordx_ultimate := 		; cordenada x da sua ultimate spirit potion
coordy_ultimate :=  	; cordenada y da sua ultimate spirit potion


coordx_great := 		; cordenada y da sua great spirit potion
coordy_great := 		; cordenada x da sua great spirit potion


coordx_modotank := 2434
coordy_modotank := 146


coordx_mana := 2486
coordy_mana := 161


coordx_mana_utamo := 2454
coordy_mana_utamo := 161

coordx_ssa := 2410
coordy_ssa := 208

coordx_mr := 2407
coordy_mr := 275

coordx_er := 2407
coordy_er := 275

coordx_great_mana := 633
coordy_great_mana := 848

coordx_colar_vazio := 2409
coordy_colar_vazio := 208

coordx_ring_vazio := 2408
coordy_ring_vazio := 270



; ======================================================================================================
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ███ Referênciando Coordenadas ████████████████████████████████████████████████████████████████████████
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ======================================================================================================

Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x,y,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\vidaemanacheia.png
			if(ErrorLevel=1)
			{
				MsgBox, VIDA OU MANA NAO ESTA CHEIA !!!
			}
			else
			{
				PixelGetColor, CorVidaCura, %coordx_exura%, %coordy_exura%    			
				
				PixelGetColor, CorVidaCura2, %coordx_exura2%, %coordy_exura2% 

				PixelGetColor, CorVidaUlt, %coordx_ultimate%, %coordy_ultimate%
				
				PixelGetColor, CorVidaGreat, %coordx_great%, %coordy_great%

				PixelGetColor, CorMana, %coordx_mana%, %coordy_mana%

				PixelGetColor, CorManaUtamo, %coordx_mana_utamo%, %coordy_mana_utamo%

				PixelGetColor, CorVidaModoTank, %coordx_modotank%, %coordy_modotank%

				PixelGetColor, CorPotLiberado, %coordx_great_mana%, %coordy_great_mana%

				break
			}
		}
	}
}


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_ssa,y_ssa,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconebless.png
			if(ErrorLevel=0)
			{
				a1 := 20
				b1 := 20
				c1 := 80
				d1 := 300
				x1_ssa := x_ssa - a1
				y1_ssa := y_ssa - b1
				x2_ssa := x_ssa + c1
				y2_ssa := y_ssa + d1

				ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\ssaon.png
				if(ErrorLevel=1)
				{
					MsgBox, SSA NAO EQUIPADO !
				}
				else
				{
					ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\mron.png
					if(ErrorLevel=1)
					{
						MsgBox, MIGHT RING NAO EQUIPADO !
					}
					else
					{
						PixelGetColor, CorSSA, %coordx_ssa%, %coordy_ssa%

						PixelGetColor, CorMR, %coordx_mr%, %coordy_mr%

						Break
					}
				}
			}
			else
			{
				ImageSearch, x_ssa,y_ssa,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconebless1.png
				if(ErrorLevel=0)
				{
					a1 := 20
					b1 := 20
					c1 := 80
					d1 := 300
					x1_ssa := x_ssa - a1
					y1_ssa := y_ssa - b1
					x2_ssa := x_ssa + c1
					y2_ssa := y_ssa + d1

					ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\ssaon.png
					if(ErrorLevel=1)
					{
						MsgBox, SSA NAO EQUIPADO !
					}
					else
					{
						ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\mron.png
						if(ErrorLevel=1)
						{
							MsgBox, MIGHT RING NAO EQUIPADO !
						}
						else
						{
							PixelGetColor, CorSSA, %coordx_ssa%, %coordy_ssa%

							PixelGetColor, CorMR, %coordx_mr%, %coordy_mr%

							Break
						}
					}
				}
				else
				{
					MsgBox, BLESS NAO ENCONTRADA !!!
				}
			}
		}
	}
}

Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_battle,y_battle,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconebattle.png
			if(ErrorLevel=0)
			{
				a := 10
				b := 0
				c := 15
				d := 300
				x1_battle := x_battle - a
				y1_battle := y_battle - b
				x2_battle := x_battle + c
				y2_battle := y_battle + d

				break
			}
			else
			{
				MsgBox, BATTLE LIST NAO ENCONTRADA !!!
			}
		}
	}
}

Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_atk_turn, y_atk_turn,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconeatkturn.png
			if(ErrorLevel=0)
			{
				a2 := 15
				b2 := 15
				c2 := 50
				d2 := 50
				x1_atkturn := x_atk_turn - a2
				y1_atkturn := y_atk_turn - b2
				x2_atkturn := x_atk_turn + c2
				y2_atkturn := y_atk_turn + d2

				break
			}
			else
			{
				MsgBox, ATK TURN NAO ENCONTRADO !!!
			}
		}
	}
}

Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_paralyzebar,y_paralyzebar,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\soulpoints.png
			if(ErrorLevel=0)
			{
				a2 := 40
				b2 := 0
				c2 := 200
				d2 := 60
				x1_paralyzebar := x_paralyzebar - a2
				y1_paralyzebar := y_paralyzebar - b2
				x2_paralyzebar := x_paralyzebar + c2
				y2_paralyzebar := y_paralyzebar + d2

				ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *50 %caminho%\eron.png
				if(ErrorLevel=0)
				{
					PixelGetColor, CorER, %coordx_er%, %coordy_er%

					Break
				}
				else
				{
					MsgBox, ENERGY RING NAO EQUIPADO !!!
				}
			}
			else
			{
				MsgBox, PARALYZEBAR NAO ENCONTRADA !!!
			}
		}
	}
}

Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\colarvazio.png
			if(ErrorLevel=0)
			{
				PixelGetColor, CorColarVazio, %coordx_colar_vazio%, %coordy_colar_vazio%

				Break
			}
			else
			{
				MsgBox, RETIRE O COLAR !!!
			}
		}
	}
}


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\ringvazio.png
			if(ErrorLevel=0)
			{
				PixelGetColor, CorRingVazio, %coordx_ring_vazio%, %coordy_ring_vazio%

				Break
			}
			else
			{
				MsgBox, RETIRE O ANEL !!!
			}
		}
	}
}

Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_cdbar,y_cdbar,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconecdbar.png
			if(ErrorLevel=0)
			{
				a1 := 5
				b1 := 10
				c1 := 250
				d1 := 40
				x1_cdbar := x_cdbar + a1
				y1_cdbar := y_cdbar - b1
				x2_cdbar := x_cdbar + c1
				y2_cdbar := y_cdbar + d1

				break
			}
			else
			{
				MsgBox, COOLDOWN BAR NAO ENCONTRADA !!!
			}
		}
	}
}
















Loop
{
	If WinActive("ahk_class " . WindowClass)
    {
		if(LigarDesligar=true)
		{
			PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
			
			if(CorVidaCuraAtual != CorVidaCura)
			{
				Send, %hkcura%
				Sleep, 100
			}
			
			PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
			
			if(CorVidaCuraAtual != CorVidaCura2)
			{
				send, %hkcura2%
				sleep, 100
			}
			
			PixelGetColor, CorVidaModoTankAtual, %coordx_modotank%, %coordy_modotank%
			
			if(CorVidaModoTankAtual != CorVidaModoTank)
			{
				PixelGetColor, CorManaAtual, %coordx_mana_utamo%, %coordy_mana_utamo%
				if(CorManaAtual = CorManaUtamo)
				{
					Send, %hkenergyring%
					Sleep, 100
				}
				else
				{
					PixelGetColor, CorSSAAtual, %coordx_ssa%, %coordy_ssa%
					if(CorSSAAtual != CorSSA)
					{
						Send, %hkssa%
						Sleep, 100
					}
					PixelGetColor, CorMRAtual, %coordx_mr%, %coordy_mr%
					if(CorMRAtual != CorMR)
					{
						Send, %hkmr%
						Sleep, 100
					}
				}
			}
			else
			{
				PixelGetColor, CorVidaAtual, %coordx_ultimate%, %coordy_ultimate%
				if(CorVidaAtual = CorVidaUlt)
				{
					PixelGetColor, CorColarAtual, %coordx_ssa%, %coordy_ssa%
					if(CorColarAtual = CorSSA)
					{
						Send, %hkcolar%
						Sleep, 100
					}
					else
					{
						PixelGetColor, CorColarAtual, %coordx_colar_vazio%, %coordy_colar_vazio%
						if(CorColarAtual = CorColarVazio)
						{
							Send, %hkcolar%
							Sleep, 100
						}
					}
					PixelGetColor, CorRingAtual, %coordx_mr%, %coordy_mr%
					if(CorRingAtual = CorMR)
					{
						Send, %hkring%
						Sleep, 100
					}
					else
					{
						PixelGetColor, CorRingAtual, %coordx_ring_vazio%, %coordy_ring_vazio%
						if(CorRingAtual = CorRingVazio)
						{
							Send, %hkring%
							Sleep, 100
						}
					}
					PixelGetColor, CorRingAtual, %coordx_mr%, %coordy_mr%
					if(CorRingAtual = CorER)
					{
						Send, %hkring%
						Sleep, 100
					}
				}
			}	
			
			ImageSearch,x,y,x1_battle,y1_battle,x2_battle,y2_battle, *50 %caminho%\targeton.png
			if(ErrorLevel=1)
			{
				ImageSearch,x,y,x1_battle,y1_battle,x2_battle,y2_battle, *50 %caminho%\targeton1.png
				if(ErrorLevel=1)
				{
					PixelGetColor, CorVidaAtual, %coordx_ultimate%, %coordy_ultimate%
					if(CorVidaAtual != CorVidaUlt)
					{
						PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
						if(CorPotAtual = CorPotLiberado)
						{
							Send, %hkvidapot%
							Sleep, 100
						}
					}
					PixelGetColor, CorVidaAtual, %coordx_great%, %coordy_great%
					if(CorVidaAtual != CorVidaGreat)
					{
						PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
						if(CorPotAtual = CorPotLiberado)
						{
							Send, %hkvidapot2%
							Sleep, 100
						}
					}
					else
					{
						PixelGetColor, CorManaAtual, %coordx_mana%, %coordy_mana%
						if(CorManaAtual != CorMana)
						{
							PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
							if(CorPotAtual = CorPotLiberado)
							{
								Send, %hkmanapot%
								Sleep, 100
							}
							
						}
						ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\paralize.png
						if(ErrorLevel=0)
						{
							Send, %hkcura%
							Sleep, 100
						}
						else
						{
							ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utanihur.png
							if(ErrorLevel=1)
							{
								Send, %hkutanihur%
								Sleep, 100
							}
							ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\food.png
							if(ErrorLevel=0)
							{
								Send, %hkfood%
								Sleep, 100
							}
						}
					}

				}






				else
				{
					ImageSearch,x,y,x1_atkturn,y1_atkturn,x2_atkturn,y2_atkturn, *100 %caminho%\atkturn.png
					if(ErrorLevel=1)
					{
						ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\massancd.png
						if(ErrorLevel=1)
						{
							Sleep, 400
							Send, %hkmassan%
							Send, %hkrefilflecha%
							turno_runa := 1
							turno_pote := 1
							PixelGetColor, CorVidaUltAtual, %coordx_ultimate%, %coordy_ultimate%
							if(CorVidaUltAtual != CorVidaUlt)
							{
								PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
								if(CorPotAtual = CorPotLiberado)
								{
									Send, %hkvidapot%
									Sleep, 100
									Send, %hkcura%
					
									turno_pote := 1
								}
							}
							PixelGetColor, CorVidaUltAtual, %coordx_great%, %coordy_great%
							
							if(CorVidaUltAtual != CorVidaGreat)
							{
								PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
								if(CorPotAtual = CorPotLiberado)
								{
									Send, %hkvidapot2%
									Sleep, 100
									Send, %hkcura2%
					
									turno_pote := 1
								}
							}
							
							else
							{
								PixelGetColor, CorManaAtual, %coordx_mana%, %coordy_mana%
								if(CorManaAtual != CorMana)
								{
									PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
									if(CorPotAtual = CorPotLiberado)
									{
										Send, %hkmanapot%
										Sleep, 100
										turno_pote := 1
									}
								}
							}
						}
						else
						{
							PixelGetColor, CorVidaAtual, %coordx_modotank%, %coordy_modotank%
							if(CorVidaAtual != CorVidaModoTank)
							{
								PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
								if(CorPotAtual = CorPotLiberado)
								{
									Send, %hkvidapot%
									Sleep, 100
									Send, %hkcura%
						
									turno_pote := 1
								}
							}
							else
							{
								if(turno_runa = 1)
								{
									Sleep, 400
									Send, %hkruna%
									Sleep, 20
									Send, %hkruna%
									Sleep, 20
									PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
									if(CorVidaCuraAtual != CorVidaCura)
									{
										Send, %hkcura%
						
									}
									PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
									if(CorVidaCuraAtual != CorVidaCura2)
									{
										send, %hkcura2%
									}
									turno_runa := 0
									turno_pote := 1
								}
							}
						}
					}
					else
					{
						ImageSearch,x,y,x1_atkturn,y1_atkturn,x2_atkturn,y2_atkturn, *100 %caminho%\atkturnpot.png
						if(ErrorLevel=0)
						{
							if(turno_pote = 1)
							{
								PixelGetColor, CorVidaUltAtual, %coordx_ultimate%, %coordy_ultimate%
								if(CorVidaUltAtual != CorVidaUlt)
								{
									PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
									if(CorPotAtual = CorPotLiberado)
									{
										Send, %hkvidapot%
										Sleep, 100
										PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
										if(CorVidaCuraAtual != CorVidaCura)
										{
											Send, %hkcura%
			
										}
										PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
										if(CorVidaCuraAtual != CorVidaCura2)
										{
											Send, %hkcura2%
			
										}
										turno_pote := 0
									}
								}
								PixelGetColor, CorVidaUltAtual, %coordx_great%, %coordy_great%
								if(CorVidaUltAtual != CorVidaGreat)
								{
									PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
									if(CorPotAtual = CorPotLiberado)
									{
										Send, %hkvidapot2%
										Sleep, 100
										PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
										if(CorVidaCuraAtual != CorVidaCura)
										{
											Send, %hkcura%
			
										}
										PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
										if(CorVidaCuraAtual != CorVidaCura2)
										{
											Send, %hkcura2%
			
										}
										turno_pote := 0
									}
								}
								
								else
								{
									PixelGetColor, CorManaAtual, %coordx_mana%, %coordy_mana%
									if(CorManaAtual != CorMana)
									{
										PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
										if(CorPotAtual = CorPotLiberado)
										{
											Send, %hkmanapot%
											Sleep, 100
											PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
											if(CorVidaCuraAtual != CorVidaCura)
											{
												Send, %hkcura%
									
											}
											PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
											if(CorVidaCuraAtual != CorVidaCura2)
											{
												Send, %hkcura2%
									
											}
											turno_pote := 0
										}
									}
								}
							}
						}
					}	
				}
			}
			
			
			
			else
			{
				ImageSearch,x,y,x1_atkturn,y1_atkturn,x2_atkturn,y2_atkturn, *100 %caminho%\atkturn.png
				if(ErrorLevel=1)
				{
					ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\massancd.png
					if(ErrorLevel=1)
					{
						Sleep, 400
						Send, %hkmassan%
						Send, %hkrefilflecha%
						turno_runa := 1
						turno_pote := 1
						PixelGetColor, CorVidaUltAtual, %coordx_ultimate%, %coordy_ultimate%
						if(CorVidaUltAtual != CorVidaUlt)
						{
							PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
							if(CorPotAtual = CorPotLiberado)
							{
								Send, %hkvidapot%
								Sleep, 100
								Send, %hkcura%
				
								turno_pote := 1
							}
						}
						PixelGetColor, CorVidaUltAtual, %coordx_great%, %coordy_great%
						if(CorVidaUltAtual != CorVidaGreat)
						{
							PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
							if(CorPotAtual = CorPotLiberado)
							{
								Send, %hkvidapot2%
								Sleep, 100
								Send, %hkcura2%
				
								turno_pote := 1
							}
						}
						else
						{
							PixelGetColor, CorManaAtual, %coordx_mana%, %coordy_mana%
							if(CorManaAtual != CorMana)
							{
								PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
								if(CorPotAtual = CorPotLiberado)
								{
									Send, %hkmanapot%
									Sleep, 100
									turno_pote := 1
								}
							}
						}
					}
					else
					{
						PixelGetColor, CorVidaAtual, %coordx_modotank%, %coordy_modotank%
						if(CorVidaAtual != CorVidaModoTank)
						{
							PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
							if(CorPotAtual = CorPotLiberado)
							{
								Send, %hkvidapot%
								Sleep, 100
								Send, %hkcura%
					
								turno_pote := 1
							}
						}
						else
						{
							if(turno_runa = 1)
							{
								Sleep, 400
								Send, %hkruna%
								Sleep, 20
								Send, %hkruna%
								Sleep, 20
								PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
								if(CorVidaCuraAtual != CorVidaCura)
								{
									Send, %hkcura%
					
								}
								PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
								if(CorVidaCuraAtual != CorVidaCura2)
								{
									Send, %hkcura2%
					
								}
								turno_runa := 0
								turno_pote := 1
							}
						}
					}
				}
				else
				{
					ImageSearch,x,y,x1_atkturn,y1_atkturn,x2_atkturn,y2_atkturn, *100 %caminho%\atkturnpot.png
					if(ErrorLevel=0)
					{
						if(turno_pote = 1)
						{
							PixelGetColor, CorVidaUltAtual, %coordx_ultimate%, %coordy_ultimate%
							if(CorVidaUltAtual != CorVidaUlt)
							{
								PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
								if(CorPotAtual = CorPotLiberado)
								{
									Send, %hkvidapot%
									Sleep, 100
									PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
									if(CorVidaCuraAtual != CorVidaCura)
									{
										Send, %hkcura%
		
									}
									PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
									if(CorVidaCuraAtual != CorVidaCura2)
									{
										Send, %hkcura2%
		
									}
									turno_pote := 0
								}
							}
							PixelGetColor, CorVidaUltAtual, %coordx_great%, %coordy_great%
							if(CorVidaUltAtual != CorVidaGreat)
							{
								PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
								if(CorPotAtual = CorPotLiberado)
								{
									Send, %hkvidapot2%
									Sleep, 100
									PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
									if(CorVidaCuraAtual != CorVidaCura)
									{
										Send, %hkcura%
		
									}
									PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
									if(CorVidaCuraAtual != CorVidaCura2)
									{
										Send, %hkcura2%
		
									}
									turno_pote := 0
								}
							}
							else
							{
								PixelGetColor, CorManaAtual, %coordx_mana%, %coordy_mana%
								if(CorManaAtual != CorMana)
								{
									PixelGetColor, CorPotAtual, %coordx_great_mana%, %coordy_great_mana%
									if(CorPotAtual = CorPotLiberado)
									{
										Send, %hkmanapot%
										Sleep, 100
										PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
										if(CorVidaCuraAtual != CorVidaCura)
										{
											Send, %hkcura%
								
										}
										PixelGetColor, CorVidaCuraAtual, %coordx_exura2%, %coordy_exura2%
										if(CorVidaCuraAtual != CorVidaCura2)
										{
											Send, %hkcura2%
								
										}
										turno_pote := 0
									}
								}
							}
						}
					}
				}	
			}
		}
	}
}

LigarDesligar := true

Insert::
	if (LigarDesligar) {
		LigarDesligar := false
		ToolTip, ------- RP HEALER OFF!
		Sleep 1000
		ToolTip
	}
	else {
		LigarDesligar := true
		ToolTip, ------- RP HEALER ON!
		Sleep 1000
		ToolTip
	}
return





