# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_rock}}},distance=..0.5]

# Fun effects to give user feedback that the transformation worked.
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 100 250
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30

# Relevant Tags for utility and compatibility
tag @s add mt_trader
tag @s add mt_trader_rock
tag @s add global.ignore
tag @s add global.ignore.pos
tag @s add global.ignore.gui
tag @s add global.ignore.kill

# The below command split into lines to make it easier to read. It will not run unless it is a single line.
# data merge entity @s {VillagerData:{profession:mason,level:5,type:plains},PersistenceRequired:1,CustomName:"\"Petrologist\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stone\"}"},SkullOwner:{Id:[I;1574779933,-1714798066,-1987665384,2114116260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU0ODE4MjMzYzgxMTg3M2U4NWY1YTRlYTQ0MjliNzVmMjNiNmFlMGVhNmY1ZmMwZjdiYjQyMGQ3YzQ3MSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cobblestone\"}"},SkullOwner:{Id:[I;686627684,-1988148325,-2098939964,-950127968],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGMxNzU0ODUxZTM2N2U4YmViYTJhNmQ4ZjdjMmZlZGU4N2FlNzkzYWM1NDZiMGYyOTlkNjczMjE1YjI5MyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Cobblestone\"}"},SkullOwner:{Id:[I;1684206543,-658486815,-2035398035,-67162188],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RlNjIwZTE4MDBiM2JlZDViNzcyODYwZDdmNWU0YzNmOGE3MTJhZTQ2MmJmOWE3OTdkNTA0YmUxMzBkYTNiOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Granite\"}"},SkullOwner:{Id:[I;986273798,-224374813,-1940893269,-1031132752],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4YmJmYjcyOWZmOTE3Zjk1MGVjYTdkNzUzMzE3YzFjNzA0ZDAyNmVhMTAyNWVmMzFhZWFlNWE0MGIzYzg4In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Diorite\"}"},SkullOwner:{Id:[I;302771623,-395951401,-2014674362,1371103441],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODAzY2ZkMTI4YWM4OGViZDEyZjQ2NWY0MWViYTdkNDhlZmRkN2RiMDBhNzEyYjNiMjkxN2EwY2RjNzM1OTJmMSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Andesite\"}"},SkullOwner:{Id:[I;-1578330764,1321946335,-1560972079,325468090],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUxMzU0M2E3NzExOGY4MjAxZjQ5YjdjOGI2MzJkY2ZkMzgwMzdlYmZjNjAxYTFiYzkxYWVkYzRjYWJhIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Gravel\"}"},SkullOwner:{Id:[I;1855084908,1576747486,-1742812766,-1814063857],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc1NDMxOGEzMzc2ZjQ3MGU0ODFkZmNkNmM4M2E1OWFhNjkwYWQ0YjRkZDc1NzdmZGFkMWMyZWYwOGQ4YWVlNiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Obsidian\"}"},SkullOwner:{Id:[I;1215429696,-1295564003,-1632062132,-697901913],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzg0MGI4N2Q1MjI3MWQyYTc1NWRlZGM4Mjg3N2UwZWQzZGY2N2RjYzQyZWE0NzllYzE0NjE3NmIwMjc3OWE1In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stone Bricks\"}"},SkullOwner:{Id:[I;787529734,1120158379,-1486097782,-1822251418],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODhiNzY3YzhhMWVhOGU0MDRiM2NjYTg1MzQ5ZjY1M2I1N2IwYzNmNDY0MjdmYmVjZWFjY2YzNjAyYmMyOWUifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cracked Stone Bricks\"}"},SkullOwner:{Id:[I;-177328023,-137606193,-1106839076,841808378],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI1OTVlMTVjYWZkOWQzZmE1NmM1ZjRhZjA2YjRkOWRmNTNjNTQzNjQ0ZjUyYmE3ZmVkZWEzYjVjYjk1YjA3OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Stone Brick\"}"},SkullOwner:{Id:[I;-1582953006,-676379568,-1627982808,208879229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzIzNzMzMzMzOWNiYzZiNDY5NDUyYzk2MjExZmEyM2UxOTUxZTg3OTUwNzZmOWVlZDk2YTEzODI0YTg3OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cobblestone Variant\"}"},SkullOwner:{Id:[I;-1263067421,-2117550945,1733196644,-992276696],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU0ZDljNDg4YzNmYmRlNTQ1NGUzODYxOWY5Y2M1YjViYThjNmMwMTg2ZjhhYTFkYTYwOTAwZmNiYzNlYTYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Cobblestone Variant\"}"},SkullOwner:{Id:[I;863484273,-1328246442,1594130528,801674241],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTQ0YzFlOGU4MjY3MmJiYTU4OTJmZDQ2NTlmOGRhZDg0ZDE1NDVkYjI2ZGI1MmVjYzkxOGYzMmExMzkxNTEzIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Boulder\"}"},SkullOwner:{Id:[I;1536799079,-237831370,1528143143,-1322425822],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE1ZGNiMjJkMzJlZDEzOGUwMjQ5ZjhmZTE4YWU1YTRlNDIxNTIwYTZkYzU3NTZhNGI4NzQ5NDRmZDg3NTliIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Boulder\"}"},SkullOwner:{Id:[I;1088065575,629972501,-2021655949,-839832446],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY0ZjMwZTViOWYyZGQyMDkyZmE5MTk1MzExNDkxMmU4NmY0MjJlNDYwNzhkOTMzYTNjYzVjOTE3YWIyZWQ5MCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Calcite\"}"},SkullOwner:{Id:[I;1592369478,-73577914,-1653763014,132391569],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRhZDBkZGQ1M2ZlMmQzMDk1YmUyMDg1NWFhYTU1M2U5ZWViMGY5ODAxMzRjZjVlMDEyOGRjZjI5MDM3ZmY1NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Tuff\"}"},SkullOwner:{Id:[I;-137003361,-60601692,-1482376035,-1229799306],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY4YjljNjEzMTMxN2NhZTc5ODk4MmJiMDAwZDliNDRiYTk4MWE0YmIwY2YxMjE2NGVjN2Q0ZDA5Yjk0MGM1MCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Dripstone Block\"}"},SkullOwner:{Id:[I;-25364723,313019658,-1767920345,-775426484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDUwYWQ3MzFjZTZkYzIxZWI1ZWVmNjk0OGJkMjE4MGE3YTMyZmExZmUzODUxZTQ3ZTNjMDBjNmUyNDYyNDlhMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate\"}"},SkullOwner:{Id:[I;-966595565,1576486419,-1801077151,1569674872],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ZjZTU1NDQyMGNmYTA0ZjkwZTkzNDcyY2IwYzEyNzU0ZDE1NGI4Y2RlNmNlMDgwNTA0NWIyYTdmNjc0MTQ0MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cobbled Deepslate\"}"},SkullOwner:{Id:[I;-966595565,1576486419,-1801077228,1569674872],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNjYjI5ODIyZDQ5NjExZjFhMWMyNjBiNGQ0YTc1ZGY1YjNlNTFjYzA2ZTA0OWZiOTQ2NmNiYjMwNmIxMTI5YiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Bricks\"}"},SkullOwner:{Id:[I;-966595565,502744595,-1801077148,1569674872],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRjMmMzMTYzZjFjYTZlN2Y0MTVlNTgzNzYzYTZkMjE5OGEyZjg2NDdiYzFmNWE3YzNiMmY5YzkyYjRkMjNiNyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Cobblestone\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1466967129,155829025],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQ0ZTAwNDBhYzU4NDQ2YmE2ZTI1YTE4ODBlMzA2ZDZkNTM2ZGFkNmE1MTRhZTEwMzgwNjdkODIyMDBjNTQ3In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Granite\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1466967273,155829028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTYwZmVlODYzZWExOTEzOWE0MDAwMGYwMDNmOTllYzQwM2RkNjdmMjI5NTI3NjgyNDY5NWJhNDQxYTYzZmVkZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Diorite\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1466967129,155820836],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc5OTNkZjA0ZGQwZTU2MTIxMjU4ZTFhMjVhN2I0M2RmZTA4NDc3Y2I5YTNjM2VjYzA1MWJhMTU5NWRiOTZmMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Andesite\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1464869977,155829028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMzYjQzYjUxOWY5NzIzMzg5OGRjNGU0ZmI1OWEwZmI4ZDgwZmU5NWU1NjdmYmI3NDM4YzNhY2FhNmE3OTNkIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Obsidian\"}"},SkullOwner:{Id:[I;-974292722,-2060237493,-1466967129,155829028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUwMjMyMzdiZGJhMjZmMDlhODg4YzkyOWEzNWIwYTE0YTY2ZjMzY2E0NTBmZjJiOGE2NzVmMzNmNjA0ZmYzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},
# ]}}

# Apply villager trades.
data merge entity @s {VillagerData:{profession:mason,level:5,type:plains},PersistenceRequired:1,CustomName:"\"Petrologist\"",Offers:{Recipes:[{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stone\"}"},SkullOwner:{Id:[I;1574779933,-1714798066,-1987665384,2114116260],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU0ODE4MjMzYzgxMTg3M2U4NWY1YTRlYTQ0MjliNzVmMjNiNmFlMGVhNmY1ZmMwZjdiYjQyMGQ3YzQ3MSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cobblestone\"}"},SkullOwner:{Id:[I;686627684,-1988148325,-2098939964,-950127968],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGMxNzU0ODUxZTM2N2U4YmViYTJhNmQ4ZjdjMmZlZGU4N2FlNzkzYWM1NDZiMGYyOTlkNjczMjE1YjI5MyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Cobblestone\"}"},SkullOwner:{Id:[I;1684206543,-658486815,-2035398035,-67162188],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RlNjIwZTE4MDBiM2JlZDViNzcyODYwZDdmNWU0YzNmOGE3MTJhZTQ2MmJmOWE3OTdkNTA0YmUxMzBkYTNiOCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Granite\"}"},SkullOwner:{Id:[I;986273798,-224374813,-1940893269,-1031132752],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4YmJmYjcyOWZmOTE3Zjk1MGVjYTdkNzUzMzE3YzFjNzA0ZDAyNmVhMTAyNWVmMzFhZWFlNWE0MGIzYzg4In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Diorite\"}"},SkullOwner:{Id:[I;302771623,-395951401,-2014674362,1371103441],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODAzY2ZkMTI4YWM4OGViZDEyZjQ2NWY0MWViYTdkNDhlZmRkN2RiMDBhNzEyYjNiMjkxN2EwY2RjNzM1OTJmMSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Andesite\"}"},SkullOwner:{Id:[I;-1578330764,1321946335,-1560972079,325468090],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUxMzU0M2E3NzExOGY4MjAxZjQ5YjdjOGI2MzJkY2ZkMzgwMzdlYmZjNjAxYTFiYzkxYWVkYzRjYWJhIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Gravel\"}"},SkullOwner:{Id:[I;1855084908,1576747486,-1742812766,-1814063857],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc1NDMxOGEzMzc2ZjQ3MGU0ODFkZmNkNmM4M2E1OWFhNjkwYWQ0YjRkZDc1NzdmZGFkMWMyZWYwOGQ4YWVlNiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Obsidian\"}"},SkullOwner:{Id:[I;1215429696,-1295564003,-1632062132,-697901913],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzg0MGI4N2Q1MjI3MWQyYTc1NWRlZGM4Mjg3N2UwZWQzZGY2N2RjYzQyZWE0NzllYzE0NjE3NmIwMjc3OWE1In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Stone Bricks\"}"},SkullOwner:{Id:[I;787529734,1120158379,-1486097782,-1822251418],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODhiNzY3YzhhMWVhOGU0MDRiM2NjYTg1MzQ5ZjY1M2I1N2IwYzNmNDY0MjdmYmVjZWFjY2YzNjAyYmMyOWUifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cracked Stone Bricks\"}"},SkullOwner:{Id:[I;-177328023,-137606193,-1106839076,841808378],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI1OTVlMTVjYWZkOWQzZmE1NmM1ZjRhZjA2YjRkOWRmNTNjNTQzNjQ0ZjUyYmE3ZmVkZWEzYjVjYjk1YjA3OCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Stone Brick\"}"},SkullOwner:{Id:[I;-1582953006,-676379568,-1627982808,208879229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzIzNzMzMzMzOWNiYzZiNDY5NDUyYzk2MjExZmEyM2UxOTUxZTg3OTUwNzZmOWVlZDk2YTEzODI0YTg3OSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cobblestone Variant\"}"},SkullOwner:{Id:[I;-1263067421,-2117550945,1733196644,-992276696],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU0ZDljNDg4YzNmYmRlNTQ1NGUzODYxOWY5Y2M1YjViYThjNmMwMTg2ZjhhYTFkYTYwOTAwZmNiYzNlYTYifX19"}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Cobblestone Variant\"}"},SkullOwner:{Id:[I;863484273,-1328246442,1594130528,801674241],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTQ0YzFlOGU4MjY3MmJiYTU4OTJmZDQ2NTlmOGRhZDg0ZDE1NDVkYjI2ZGI1MmVjYzkxOGYzMmExMzkxNTEzIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Boulder\"}"},SkullOwner:{Id:[I;1536799079,-237831370,1528143143,-1322425822],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE1ZGNiMjJkMzJlZDEzOGUwMjQ5ZjhmZTE4YWU1YTRlNDIxNTIwYTZkYzU3NTZhNGI4NzQ5NDRmZDg3NTliIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Mossy Boulder\"}"},SkullOwner:{Id:[I;1088065575,629972501,-2021655949,-839832446],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY0ZjMwZTViOWYyZGQyMDkyZmE5MTk1MzExNDkxMmU4NmY0MjJlNDYwNzhkOTMzYTNjYzVjOTE3YWIyZWQ5MCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Calcite\"}"},SkullOwner:{Id:[I;1592369478,-73577914,-1653763014,132391569],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRhZDBkZGQ1M2ZlMmQzMDk1YmUyMDg1NWFhYTU1M2U5ZWViMGY5ODAxMzRjZjVlMDEyOGRjZjI5MDM3ZmY1NiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Tuff\"}"},SkullOwner:{Id:[I;-137003361,-60601692,-1482376035,-1229799306],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY4YjljNjEzMTMxN2NhZTc5ODk4MmJiMDAwZDliNDRiYTk4MWE0YmIwY2YxMjE2NGVjN2Q0ZDA5Yjk0MGM1MCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Dripstone Block\"}"},SkullOwner:{Id:[I;-25364723,313019658,-1767920345,-775426484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDUwYWQ3MzFjZTZkYzIxZWI1ZWVmNjk0OGJkMjE4MGE3YTMyZmExZmUzODUxZTQ3ZTNjMDBjNmUyNDYyNDlhMiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate\"}"},SkullOwner:{Id:[I;-966595565,1576486419,-1801077151,1569674872],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ZjZTU1NDQyMGNmYTA0ZjkwZTkzNDcyY2IwYzEyNzU0ZDE1NGI4Y2RlNmNlMDgwNTA0NWIyYTdmNjc0MTQ0MiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Cobbled Deepslate\"}"},SkullOwner:{Id:[I;-966595565,1576486419,-1801077228,1569674872],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNjYjI5ODIyZDQ5NjExZjFhMWMyNjBiNGQ0YTc1ZGY1YjNlNTFjYzA2ZTA0OWZiOTQ2NmNiYjMwNmIxMTI5YiJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Deepslate Bricks\"}"},SkullOwner:{Id:[I;-966595565,502744595,-1801077148,1569674872],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRjMmMzMTYzZjFjYTZlN2Y0MTVlNTgzNzYzYTZkMjE5OGEyZjg2NDdiYzFmNWE3YzNiMmY5YzkyYjRkMjNiNyJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Cobblestone\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1466967129,155829025],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQ0ZTAwNDBhYzU4NDQ2YmE2ZTI1YTE4ODBlMzA2ZDZkNTM2ZGFkNmE1MTRhZTEwMzgwNjdkODIyMDBjNTQ3In19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Granite\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1466967273,155829028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTYwZmVlODYzZWExOTEzOWE0MDAwMGYwMDNmOTllYzQwM2RkNjdmMjI5NTI3NjgyNDY5NWJhNDQxYTYzZmVkZCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Diorite\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1466967129,155820836],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc5OTNkZjA0ZGQwZTU2MTIxMjU4ZTFhMjVhN2I0M2RmZTA4NDc3Y2I5YTNjM2VjYzA1MWJhMTU5NWRiOTZmMCJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Andesite\"}"},SkullOwner:{Id:[I;-974292722,-2059909813,-1464869977,155829028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMzYjQzYjUxOWY5NzIzMzg5OGRjNGU0ZmI1OWEwZmI4ZDgwZmU5NWU1NjdmYmI3NDM4YzNhY2FhNmE3OTNkIn19fQ=="}]}}},Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:"player_head",tag:{display:{Name:"{\"text\":\"Barrel with Obsidian\"}"},SkullOwner:{Id:[I;-974292722,-2060237493,-1466967129,155829028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUwMjMyMzdiZGJhMjZmMDlhODg4YzkyOWEzNWIwYTE0YTY2ZjMzY2E0NTBmZjJiOGE2NzVmMzNmNjA0ZmYzZSJ9fX0="}]}}},Count:1},rewardExp:0b,maxUses:9999999}]}}

# Talk to me
tellraw @e[type=player,distance=..16] [{"text":"<","color":"white"},{"text":"Petrologist","color":"gold"},{"text":">","color":"white"},{"text":" There's stone all around us and I've collected some of the finer samples for you to take a peak at.","color":"green"}]