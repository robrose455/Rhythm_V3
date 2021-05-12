extends Spatial

var inputs = ["A", "S", "D", "F", "J", "K", "L", "SC"]

func _ready():
	
	#Init Piston Colors
	for i in inputs:
		
		var mat = SpatialMaterial.new()
		mat.albedo_color = get_node("ColorManager").colors[str(i)]
		get_node(str(i) + "_Track/Piston/Piston_Mesh").set_material_override(mat)
		

func _process(delta):
	
	#Activate Piston
	for i in inputs:
		
		if Input.is_action_just_pressed(i):
			get_node(str(i) + "_Track/Piston/Animations").play("Activate")
			
			var mat = SpatialMaterial.new()
			mat.albedo_color = get_node("ColorManager").colors[str(i)]
			get_node(str(i) + "_Track/Left_Wall/Wall_Mesh").set_material_override(mat)
			get_node(str(i) + "_Track/Right_Wall/Wall_Mesh").set_material_override(mat)
			
	#Deactivate Piston
	for i in inputs:
		
		if Input.is_action_just_released(i):
			get_node(str(i) + "_Track/Piston/Animations").play("Deactivate")
			
			var mat = SpatialMaterial.new()
			mat.albedo_color = get_node("ColorManager").colors["G"]
			get_node(str(i) + "_Track/Left_Wall/Wall_Mesh").set_material_override(mat)
			get_node(str(i) + "_Track/Right_Wall/Wall_Mesh").set_material_override(mat)
				
			

	
	
