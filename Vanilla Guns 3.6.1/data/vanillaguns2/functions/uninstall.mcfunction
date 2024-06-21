kill @e[tag=VG_turret,type=armor_stand]
kill @e[type=villager,tag=VG_hpvillager]
kill @e[type=#vanillaguns2:warmachineentities,tag=VG_vehiclebody]

tag @a remove VG_givenplayerid
tag @a remove VG_autoturretskip
tag @e remove VG_hasmobgun
scoreboard players set @a VG_vehicleid 0
clear @a carrot_on_a_stick{DeleteOnDrop:1}
clear @a barrier{DeleteOnDrop:1}
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell"}}]

scoreboard objectives remove VG_def_pstlammo 
scoreboard objectives remove VG_def_shtgnammo
scoreboard objectives remove VG_def_smgammo 
scoreboard objectives remove VG_def_rifleammo
scoreboard objectives remove VG_def_rgunammo 

scoreboard objectives remove VG_def_mgunammo 
scoreboard objectives remove VG_def_rturammo 
scoreboard objectives remove VG_def_flakammo 
scoreboard objectives remove VG_def_egunammo 
scoreboard objectives remove VG_def_casammo 
scoreboard objectives remove VG_def_stratammo

scoreboard objectives remove VG_def_flaktemp 
scoreboard objectives remove VG_def_mguntemp 
scoreboard objectives remove VG_def_eguntemp 
scoreboard objectives remove VG_def_rturchrg 

scoreboard objectives remove VG_def_lbombcool
scoreboard objectives remove VG_def_hbombcool
scoreboard objectives remove VG_def_cascool 
scoreboard objectives remove VG_def_stratcool

scoreboard objectives remove VG_def_pstlchng 
scoreboard objectives remove VG_def_shtgnchng
scoreboard objectives remove VG_def_smgchng 
scoreboard objectives remove VG_def_riflechng
scoreboard objectives remove VG_def_rgunchng 
scoreboard objectives remove VG_def_bnetchng 

scoreboard objectives remove VG_def_bnetenrgy

scoreboard objectives remove VG_def_laserammo
scoreboard objectives remove VG_def_lasertemp

scoreboard objectives remove VG_def_flakspd 
scoreboard objectives remove VG_def_lasermspd

scoreboard objectives remove VG_def_dcaybase 
scoreboard objectives remove VG_def_pstldcay 
scoreboard objectives remove VG_def_shtgndcay
scoreboard objectives remove VG_def_smgdcay 
scoreboard objectives remove VG_def_rifledcay
scoreboard objectives remove VG_def_mgundcay 
scoreboard objectives remove VG_def_autodcay 
scoreboard objectives remove VG_def_egundcay 

scoreboard objectives remove VG_def_pstlndcy 
scoreboard objectives remove VG_def_shtgnndcy
scoreboard objectives remove VG_def_smgndcy 
scoreboard objectives remove VG_def_riflendcy
scoreboard objectives remove VG_def_mgunndcy 
scoreboard objectives remove VG_def_autondcy 
scoreboard objectives remove VG_def_egunndcy 

scoreboard objectives remove VG_def_flydelay 

scoreboard objectives remove VG_def_aturrammo
scoreboard objectives remove VG_def_aturrtime

scoreboard objectives remove VG_def_newturdiv

scoreboard objectives remove VG_def_recoil

scoreboard objectives remove VG_def_ammoinc
scoreboard objectives remove VG_def_ammodec

scoreboard objectives remove VG_fireCoaS 
scoreboard objectives remove VG_fireFR 
scoreboard objectives remove VG_plyrposX 
scoreboard objectives remove VG_plyrposY 
scoreboard objectives remove VG_plyrposZ 
scoreboard objectives remove VG_turretposX 
scoreboard objectives remove VG_turretposY 
scoreboard objectives remove VG_turretposY2 
scoreboard objectives remove VG_turretposZ 
scoreboard objectives remove VG_arrowposX 
scoreboard objectives remove VG_arrowposY 
scoreboard objectives remove VG_arrowposZ 
scoreboard objectives remove VG_tarrowmtnX 
scoreboard objectives remove VG_tarrowmtnY 
scoreboard objectives remove VG_tarrowmtnZ 
scoreboard objectives remove VG_flipsigns 
scoreboard objectives remove VG_10div 
scoreboard objectives remove VG_100div 
scoreboard objectives remove VG_tempY 
scoreboard objectives remove VG_resisttime 

scoreboard objectives remove VG_fpistol 
scoreboard objectives remove VG_fshotgun 
scoreboard objectives remove VG_frifle 
scoreboard objectives remove VG_fsmg 
scoreboard objectives remove VG_frgun 
scoreboard objectives remove VG_firebayonet 

scoreboard objectives remove VG_pistoltimer 
scoreboard objectives remove VG_shotguntimer 
scoreboard objectives remove VG_rifletimer 
scoreboard objectives remove VG_smgtimer 
scoreboard objectives remove VG_rguntimer 

scoreboard objectives remove VG_pistolammo 
scoreboard objectives remove VG_shotgunammo 
scoreboard objectives remove VG_rifleammo 
scoreboard objectives remove VG_smgammo 
scoreboard objectives remove VG_rgunammo 

scoreboard objectives remove VG_elytraflying 
scoreboard objectives remove VG_egunammo 
scoreboard objectives remove VG_casammo 
scoreboard objectives remove VG_stratammo 
scoreboard objectives remove VG_eguntemp 
scoreboard objectives remove VG_eguncooldown 
scoreboard objectives remove VG_cascooldown 
scoreboard objectives remove VG_stratcooldown
scoreboard objectives remove VG_fegun 
scoreboard objectives remove VG_fcasbomb 
scoreboard objectives remove VG_fstratbomb 

scoreboard objectives remove VG_mgun 

scoreboard objectives remove VG_sneak 

scoreboard objectives remove VG_bombTimer 

scoreboard objectives remove VG_dLightBomb 
scoreboard objectives remove VG_lightBomb 

scoreboard objectives remove VG_dHeavyBomb 
scoreboard objectives remove VG_heavyBomb 

scoreboard objectives remove VG_lbtimer 
scoreboard objectives remove VG_hbtimer 

scoreboard objectives remove VG_mgunammo 
scoreboard objectives remove VG_mguntemp 

scoreboard objectives remove VG_flakgunammo 
scoreboard objectives remove VG_flakguntemp 
scoreboard objectives remove VG_flakguntime 
scoreboard objectives remove VG_flakgunage 

scoreboard objectives remove VG_rturretammo 
scoreboard objectives remove VG_rturretcharge

scoreboard objectives remove VG_rockettime 
scoreboard objectives remove VG_bullettime 

scoreboard objectives remove VG_selectedgun 

scoreboard objectives remove VG_pistolchange 
scoreboard objectives remove VG_shotgunchange
scoreboard objectives remove VG_smgchange 
scoreboard objectives remove VG_riflechange 
scoreboard objectives remove VG_rgunchange 
scoreboard objectives remove VG_bayonetchange

scoreboard objectives remove VG_bayonetenergy
scoreboard objectives remove VG_bayonetcool 
scoreboard objectives remove VG_3mult 

scoreboard objectives remove VG_recoilpistol 
scoreboard objectives remove VG_recoilshotgun
scoreboard objectives remove VG_recoilsmg 
scoreboard objectives remove VG_recoilrifle 

scoreboard objectives remove VG_bayonetdeath 

scoreboard objectives remove VG_turretinvis 

scoreboard objectives remove VG_laserammo 
scoreboard objectives remove VG_lasertemp 
scoreboard objectives remove VG_laserage 
scoreboard objectives remove VG_lasertimer 
scoreboard objectives remove VG_laserdelay 
scoreboard objectives remove VG_lasercolor 

scoreboard objectives remove VG_flaktimer 
scoreboard objectives remove VG_lasermovtimer

scoreboard objectives remove VG_damagedealt 
scoreboard objectives remove VG_swimming 

scoreboard objectives remove VG_fall_final 
scoreboard objectives remove VG_fall_start 
scoreboard objectives remove VG_fall_calc 
scoreboard objectives remove VG_fall_temp 
scoreboard objectives remove VG_fall_temptime
scoreboard objectives remove VG_fall_temploss

scoreboard objectives remove VG_elytradelay 

scoreboard objectives remove VG_autoturammo 
scoreboard objectives remove VG_autoturtime 
scoreboard objectives remove VG_autoturcast 
scoreboard objectives remove VG_autoturcastid
scoreboard objectives remove VG_autoturcastt 
scoreboard objectives remove VG_autoparticles
scoreboard objectives remove VG_autoslimesize
scoreboard objectives remove VG_autoloopall 
scoreboard objectives remove VG_autoturdelay 
scoreboard objectives remove VG_autosuccess 
scoreboard objectives remove VG_autohurttime 
scoreboard objectives remove VG_autoturid 
scoreboard objectives remove VG_autoturhitid 

scoreboard objectives remove VG_itemcount

scoreboard objectives remove VG_hmgammo
scoreboard objectives remove VG_hmgtemp
scoreboard objectives remove VG_hmgtime
scoreboard objectives remove VG_def_hmgndcy
scoreboard objectives remove VG_def_hmgdcay
scoreboard objectives remove VG_def_hmgammo
scoreboard objectives remove VG_def_hmgtemp

scoreboard objectives remove VG_rgunchecks
scoreboard objectives remove VG_autoturplyrid
scoreboard objectives remove VG_plyrid
scoreboard objectives remove VG_turretentimer
scoreboard objectives remove VG_turretdstimer

scoreboard objectives remove VG_turrethp

scoreboard objectives remove VG_mobgunid
scoreboard objectives remove VG_tempgunammo

scoreboard objectives remove VG_vehiclehp 
scoreboard objectives remove VG_bodyhp 
scoreboard objectives remove VG_vehiclehptime 
scoreboard objectives remove VG_vehiclehpcalc 
scoreboard objectives remove VG_vehiclehpperc 
scoreboard objectives remove VG_vehiclehpperm 
scoreboard objectives remove VG_1000mult 
scoreboard objectives remove VG_100mult 
scoreboard objectives remove VG_20mult 
scoreboard objectives remove VG_40mult 
scoreboard objectives remove VG_60mult 
scoreboard objectives remove VG_80mult 
scoreboard objectives remove VG_50mult 
scoreboard objectives remove VG_100modu 
scoreboard objectives remove VG_10div 
scoreboard objectives remove VG_entering 
scoreboard objectives remove VG_vehiclemovmod 
scoreboard objectives remove VG_vehiclemovtme 
scoreboard objectives remove VG_vehicleaction 
scoreboard objectives remove VG_AECFix 
scoreboard objectives remove VG_limitrange 
scoreboard objectives remove VG_usecooldown 
scoreboard objectives remove VG_vehicleground 
scoreboard objectives remove VG_vehiclecontct 
scoreboard objectives remove VG_vehicleinscnt 
scoreboard objectives remove VG_vehiclefall 
scoreboard objectives remove VG_vehiclehurt 
scoreboard objectives remove VG_vehicleCrshY 
scoreboard objectives remove VG_vehicleEntY 
scoreboard objectives remove VG_vehicleitem 
scoreboard objectives remove VG_vehicleflak 
scoreboard objectives remove VG_vehicleflak1 
scoreboard objectives remove VG_vehicleflak2 
scoreboard objectives remove VG_vehicleflak3 
scoreboard objectives remove VG_vehicleflak4 
scoreboard objectives remove VG_vehicleflak5 
scoreboard objectives remove VG_vehicleflakT 
scoreboard objectives remove VG_vehiclefrag 
scoreboard objectives remove VG_vehiclefrag1 
scoreboard objectives remove VG_vehiclefrag2 
scoreboard objectives remove VG_vehiclefrag3 
scoreboard objectives remove VG_vehiclefrag4 
scoreboard objectives remove VG_vehiclefrag5 
scoreboard objectives remove VG_vehiclefragT 
scoreboard objectives remove VG_vehiclecurupd 
scoreboard objectives remove VG_vehiclecurX 
scoreboard objectives remove VG_vehiclecurY
scoreboard objectives remove VG_vehiclecurZ 
scoreboard objectives remove VG_vehicleid 
scoreboard objectives remove VG_vehiclemovtmr 
scoreboard objectives remove VG_vehicleoffX 
scoreboard objectives remove VG_vehicleoffY 
scoreboard objectives remove VG_vehicleoffZ 
scoreboard objectives remove VG_vehicleposX 
scoreboard objectives remove VG_vehicleposY
scoreboard objectives remove VG_vehicleposZ 
scoreboard objectives remove VG_vehiclelstmov 

scoreboard objectives remove VG_def_acarhp
scoreboard objectives remove VG_def_entertime
scoreboard objectives remove VG_def_minground
scoreboard objectives remove VG_def_ltankhp
scoreboard objectives remove VG_def_ltankflak
scoreboard objectives remove VG_def_htankhp
scoreboard objectives remove VG_def_htankflak
scoreboard objectives remove VG_def_htankfrag
scoreboard objectives remove VG_def_lmgdcay
scoreboard objectives remove VG_def_lmgndcy

tellraw @a [{"text":"Vanilla Guns: ","color":"green"},{"text":"Uninstalled datapack. Remove it now from your datapacks folder.","color":"yellow"}]

datapack disable "file/Vanilla Guns 3.3"
datapack disable "file/Vanilla Guns 3.3.zip"