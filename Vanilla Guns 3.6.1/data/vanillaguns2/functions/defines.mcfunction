#Create defines
scoreboard objectives add VG_def_pstlammo dummy
scoreboard objectives add VG_def_shtgnammo dummy
scoreboard objectives add VG_def_smgammo dummy
scoreboard objectives add VG_def_rifleammo dummy
scoreboard objectives add VG_def_rgunammo dummy

scoreboard objectives add VG_def_mgunammo dummy
scoreboard objectives add VG_def_rturammo dummy
scoreboard objectives add VG_def_flakammo dummy
scoreboard objectives add VG_def_egunammo dummy
scoreboard objectives add VG_def_casammo dummy
scoreboard objectives add VG_def_stratammo dummy

scoreboard objectives add VG_def_flaktemp dummy
scoreboard objectives add VG_def_mguntemp dummy
scoreboard objectives add VG_def_eguntemp dummy
scoreboard objectives add VG_def_rturchrg dummy

scoreboard objectives add VG_def_lbombcool dummy
scoreboard objectives add VG_def_hbombcool dummy
scoreboard objectives add VG_def_cascool dummy
scoreboard objectives add VG_def_stratcool dummy

scoreboard objectives add VG_def_pstlchng dummy
scoreboard objectives add VG_def_shtgnchng dummy
scoreboard objectives add VG_def_smgchng dummy
scoreboard objectives add VG_def_riflechng dummy
scoreboard objectives add VG_def_rgunchng dummy
scoreboard objectives add VG_def_bnetchng dummy

scoreboard objectives add VG_def_bnetenrgy dummy

scoreboard objectives add VG_def_laserammo dummy
scoreboard objectives add VG_def_lasertemp dummy

scoreboard objectives add VG_def_flakspd dummy
scoreboard objectives add VG_def_lasermspd dummy

scoreboard objectives add VG_def_dcaybase dummy
scoreboard objectives add VG_def_pstldcay dummy
scoreboard objectives add VG_def_shtgndcay dummy
scoreboard objectives add VG_def_smgdcay dummy
scoreboard objectives add VG_def_rifledcay dummy
scoreboard objectives add VG_def_mgundcay dummy
scoreboard objectives add VG_def_autodcay dummy
scoreboard objectives add VG_def_egundcay dummy
scoreboard objectives add VG_def_hmgdcay dummy
scoreboard objectives add VG_def_lmgdcay dummy

scoreboard objectives add VG_def_pstlndcy dummy
scoreboard objectives add VG_def_shtgnndcy dummy
scoreboard objectives add VG_def_smgndcy dummy
scoreboard objectives add VG_def_riflendcy dummy
scoreboard objectives add VG_def_mgunndcy dummy
scoreboard objectives add VG_def_autondcy dummy
scoreboard objectives add VG_def_egunndcy dummy
scoreboard objectives add VG_def_hmgndcy dummy
scoreboard objectives add VG_def_lmgndcy dummy

scoreboard objectives add VG_def_flydelay dummy

scoreboard objectives add VG_def_aturrammo dummy
scoreboard objectives add VG_def_aturrtime dummy

scoreboard objectives add VG_def_newturdiv dummy

scoreboard objectives add VG_def_recoil dummy

scoreboard objectives add VG_def_hmgammo dummy
scoreboard objectives add VG_def_hmgtemp dummy

scoreboard objectives add VG_def_ammoinc dummy
scoreboard objectives add VG_def_ammodec dummy

scoreboard objectives add VG_def_acarhp dummy
scoreboard objectives add VG_def_entertime dummy
scoreboard objectives add VG_def_minground dummy

scoreboard objectives add VG_def_ltankhp dummy
scoreboard objectives add VG_def_ltankflak dummy

scoreboard objectives add VG_def_htankhp dummy
scoreboard objectives add VG_def_htankflak dummy
scoreboard objectives add VG_def_htankfrag dummy
scoreboard objectives add VG_def_vaggro dummy

scoreboard objectives add VG_def_ltnkbreak dummy
scoreboard objectives add VG_def_htnkbreak dummy
scoreboard objectives add VG_def_hddngrnd dummy

scoreboard objectives add VG_def_dmgmult dummy
scoreboard objectives add VG_lst_dmgmult dummy

scoreboard objectives add VG_def_pstlcldwn dummy
scoreboard objectives add VG_def_stgncldwn dummy
scoreboard objectives add VG_def_smgcldwn dummy

scoreboard objectives add VG_def_maxdelta dummy

#Set defines
scoreboard players set VG_defines VG_def_pstlammo 15
scoreboard players set VG_defines VG_def_shtgnammo 6
scoreboard players set VG_defines VG_def_smgammo 50
scoreboard players set VG_defines VG_def_rifleammo 1
scoreboard players set VG_defines VG_def_rgunammo 1

scoreboard players set VG_defines VG_def_mgunammo 400
scoreboard players set VG_defines VG_def_rturammo 10
scoreboard players set VG_defines VG_def_flakammo 90
scoreboard players set VG_defines VG_def_egunammo 300
scoreboard players set VG_defines VG_def_casammo 50
scoreboard players set VG_defines VG_def_stratammo 30

scoreboard players set VG_defines VG_def_mguntemp 350
scoreboard players set VG_defines VG_def_flaktemp 450
scoreboard players set VG_defines VG_def_eguntemp 250
scoreboard players set VG_defines VG_def_rturchrg 40

scoreboard players set VG_defines VG_def_lbombcool 10
scoreboard players set VG_defines VG_def_hbombcool 25
scoreboard players set VG_defines VG_def_cascool 5
scoreboard players set VG_defines VG_def_stratcool 10

scoreboard players set VG_defines VG_def_pstlchng 0
scoreboard players set VG_defines VG_def_shtgnchng 10
scoreboard players set VG_defines VG_def_smgchng 15
scoreboard players set VG_defines VG_def_riflechng 20
scoreboard players set VG_defines VG_def_rgunchng 40
scoreboard players set VG_defines VG_def_bnetchng 3

scoreboard players set VG_defines VG_def_bnetenrgy 100

scoreboard players set VG_defines VG_3mult 3

#scoreboard players set VG_defines VG_def_laserturr 400 
scoreboard players set VG_defines VG_def_laserammo 80
scoreboard players set VG_defines VG_def_lasertemp 150

scoreboard players set VG_defines VG_def_flakspd 40 
scoreboard players set VG_defines VG_def_lasermspd 200

#A copy of these is stored in root/functions/vanillaguns2/special/watchdog/recalculatedecay

scoreboard players set VG_defines VG_def_dcaybase 1000000
function vanillaguns2:special/watchdog/recalculatedecay

scoreboard players set VG_defines VG_def_pstlndcy 2
scoreboard players set VG_defines VG_def_shtgnndcy 2
scoreboard players set VG_defines VG_def_smgndcy 2
scoreboard players set VG_defines VG_def_riflendcy 4
scoreboard players set VG_defines VG_def_mgunndcy 200
scoreboard players set VG_defines VG_def_autondcy 2
scoreboard players set VG_defines VG_def_egunndcy 200
scoreboard players set VG_defines VG_def_hmgndcy 3
scoreboard players set VG_defines VG_def_lmgndcy 200

scoreboard players set VG_defines VG_def_flydelay 50

scoreboard players set VG_defines VG_def_aturrammo 640
scoreboard players set VG_defines VG_def_aturrtime 4

scoreboard players set VG_defines VG_def_newturdiv 8

scoreboard players set VG_defines VG_def_recoil 0

scoreboard players set VG_defines VG_def_hmgammo 30
scoreboard players set VG_defines VG_def_hmgtemp 250

scoreboard players set VG_defines VG_def_ammoinc 1
scoreboard players set VG_defines VG_def_ammodec 1

scoreboard players set VG_defines VG_def_acarhp 1000
scoreboard players set VG_defines VG_def_entertime 100
scoreboard players set VG_defines VG_def_minground 60
scoreboard players set VG_defines VG_def_hddngrnd 30

scoreboard players set VG_defines VG_def_ltankhp 5000
scoreboard players set VG_defines VG_def_ltankflak 120

scoreboard players set VG_defines VG_def_htankhp 25000
scoreboard players set VG_defines VG_def_htankflak 40
scoreboard players set VG_defines VG_def_htankfrag 60

scoreboard players set VG_defines VG_def_vaggro 200

scoreboard players set VG_defines VG_def_ltnkbreak 6
scoreboard players set VG_defines VG_def_htnkbreak 1

scoreboard players set VG_defines VG_def_dmgmult 160
scoreboard players operation VG_defines VG_lst_dmgmult = VG_defines VG_def_dmgmult

scoreboard players set VG_defines VG_def_pstlcldwn 4
scoreboard players set VG_defines VG_def_stgncldwn 12
scoreboard players set VG_defines VG_def_smgcldwn -2

scoreboard players set VG_defines VG_def_maxdelta 5000

