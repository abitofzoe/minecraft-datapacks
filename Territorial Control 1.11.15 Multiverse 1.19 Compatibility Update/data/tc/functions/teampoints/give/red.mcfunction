scoreboard players add TeamPoints TC_rpoints 1
scoreboard players remove TeamPoints TC_trpoints 600
execute if score TeamPoints TC_trpoints matches 600.. run function tc:teampoints/give/red