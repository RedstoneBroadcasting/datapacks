#timer_of_competition
execute unless score @e[tag=timer,limit=1] veryfi = 30 veryfi run scoreboard objectives add veryfi @e[tag=timer] 1
execute if score @e[tag=timer, limit=1] veryfi = 30 veryfi run tag @p[tag=start,limt=1] remove start
execute if entity @p[tag=!start now, limit=1] run tag @s add DSQ
execute if entity @p[tag=DSQ, limit=1] run title @a actionbar ["",{"text":"@e[tag=DSQ] Has been disqualified caused of to late start"}]
##Weite

scoreboard players operation @s distance = weite
scoreboard players operation @s distance /=  distance
scoreboard players operation @s distance -=  calc
scoreboard players operation @s distance /=  1,8
scoreboard players operation @s distance += 60

##Wind
scoreboard players operation @s windges = pos1
scoreboard players operation @s windges += pos2
scoreboard players operation @s windges += pos3
scoreboard players operation @s windges += pos4
scoreboard players operation @s windges += pos5
scoreboard players operation @s windges += pos6
scoreboard players operation @s windges += pos7
##wind_durchschnitt
scoreboard players operation @s windges /= 7
#gesamt
scoreboard players operation @s ges = windges
scoreboard players operation @s ges += distance
