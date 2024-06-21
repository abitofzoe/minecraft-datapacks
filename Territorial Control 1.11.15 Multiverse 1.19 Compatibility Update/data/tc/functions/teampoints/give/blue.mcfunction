scoreboard players add TeamPoints TC_bpoints 1
scoreboard players remove TeamPoints TC_tbpoints 600
execute if score TeamPoints TC_tbpoints matches 600.. run function tc:teampoints/give/blue