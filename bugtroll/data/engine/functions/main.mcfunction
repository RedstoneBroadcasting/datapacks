scoreboard players add @p[team=troll] troll 1
execute unless score @p[team=troll] troll = 15.. troll run tp @p @p
execute if score @p[team=troll] troll = 15.. troll run tp @s @e[type=armor_stand, tag=pos1, sort=nearest,]a
execute if score @p[team=troll] troll = 15.. troll run scoreboard players add @s timeout 1
execute if score @p[team=troll] timeout = 50 timeout run summon armor_stand ^ ^ ^ {Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["pos 1"]}
execute if score @p[team=troll] timeout = 100 timeout run scoreboard reset @s troll
execute if score @p[team=troll] troll = 15 timeout run scoreboard reset @s timeout
