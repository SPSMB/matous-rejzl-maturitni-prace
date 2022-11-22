obj = choose(obj_item_helm_shop,obj_item_pop_shop,obj_item_boots_shop,obj_item_sword_shop,obj_item_rock_spawn_shop);
while(prefobj==obj){
obj = choose(obj_item_helm_shop,obj_item_pop_shop,obj_item_boots_shop,obj_item_sword_shop,obj_item_rock_spawn_shop);
}
instance_create_layer(x, y,"Instances", obj);
prefobj=obj;