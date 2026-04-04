#$execute as @a unless items entity @s container.$(n) \
    bat_spawn_egg[item_model="test_instance_block",item_name="Chest Auto-Refill Block",lore=[{color:dark_gray,text:"place under a chest or other container"},{color:dark_gray,text:"and it will refill the container with items from"},{color:dark_gray,text:"the barrel underneath the block"}],entity_data={id:"block_display",Tags:["refiller"],block_state:{Name:"test_instance_block"},transformation:{translation:[-0.5,0,-0.5],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[1,1,1]}}] \
    unless items entity @s container.$(n) #spwneggs[] \
    run item modify entity @a container.$(n) \
    {function:set_components,components:{"can_break":[{blocks:[]}],"can_place_on":[{blocks:[]}],"tooltip_display":{hidden_components:["can_break","can_place_on"]},"!entity_data":{}}}

$execute if items entity @s container.$(n) *[can_break] run item modify entity @a container.$(n) \
    {function:set_components,components:{"can_break":[{blocks:[]}],"can_place_on":[{blocks:[]}],"tooltip_display":{hidden_components:["can_break","can_place_on"]}}}
$execute if items entity @s container.$(n) *[can_place_on] run item modify entity @a container.$(n) \
    {function:set_components,components:{"can_break":[{blocks:[]}],"can_place_on":[{blocks:[]}],"tooltip_display":{hidden_components:["can_break","can_place_on"]}}}

#execute if items entity @s container.$(n) *[entity_data~Pos]

#$execute unless items entity @s container.$(n) \
    bat_spawn_egg[item_model="test_instance_block",item_name="Chest Auto-Refill Block",lore=[{color:dark_gray,text:"place under a chest or other container"},{color:dark_gray,text:"and it will refill the container with items from"},{color:dark_gray,text:"the barrel underneath the block"}],entity_data={id:"block_display",Tags:["refiller"],block_state:{Name:"test_instance_block"},transformation:{translation:[-0.5,0,-0.5],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]},scale:[1,1,1]}}] \
    run data remove entity @s Inventory[{Slot:$(n)b}].components."minecraft:entity_data".Pos

$execute store success storage minecraft:temp "$(my_uuid)".detect int 1 run data get entity @s Inventory[$(n)].components."minecraft:entity_data".Pos
$execute if data storage temp {"$(my_uuid)":{detect:1}} run clear @s #spwneggs
