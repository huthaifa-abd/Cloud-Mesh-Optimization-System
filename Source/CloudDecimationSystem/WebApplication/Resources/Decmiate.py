# A Python Script Dedicated to decimating objects using belnder API

#General Initialization and include scripts

import bpy
import sys
 
argv = sys.argv
argv = argv[argv.index("--") + 1:] # get all args after "--"

#The name of the exported Object
obj_out = argv[0]
#The name of the Imported Object
obj_in = argv[1]
#Set the amount of decimation required
decimation_ratio = argv[2]

#Import The Selected Object
bpy.ops.import_scene.obj(filepath=obj_in)

# is object currently visible?
for ob in bpy.context.visible_objects:
# ignore objects other than mesh
	if ob.type == 'MESH':
		#Set object as active in the scene
		bpy.context.scene.objects.active = ob
		#Apply Decimation Modifier to the selected object
		bpy.ops.object.modifier_add(type="DECIMATE")

		#Apply Decimation Ratio
		bpy.context.object.modifiers["Decimate"].ratio = float(decimation_ratio)
		
		#Apply Decimation Modifire To Mesh
		bpy.ops.object.modifier_apply(apply_as='DATA', modifier="Decimate")
		

#Export Scene Objects to a seprate file
bpy.ops.export_scene.obj(filepath=obj_out, axis_forward='-Z', axis_up='Y')

##For future refrences ADD Decimation Preview Code Below