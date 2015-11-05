(**** beginning of start.gcode ****)
(This file is for a MakerBot Thing-O-Matic)
(**** begin initialization commands ****)
M103 (disable RPM)
M73 P0 (enable build progress)
G21 (set units to mm)
G90 (set positioning to absolute)
M108 R5.0 (set extruder speed)
M103 (Make sure extruder is off)
M104 S225 T0 (set extruder temperature)
M109 S100 T0 (set heated-build-platform temperature)
(**** end initialization commands ****)
(**** begin homing ****)
G162 Z F1000 (home Z axis maximum)
G92 Z10 (set Z to 0)
G1 Z0 (move z down 10)
G162 Z F150 (home Z axis maximum)
G161 X Y F2500 (home XY axes minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
(**** end homing ****)
(**** begin pre-wipe commands ****)
( Some people have had problems with the nozzle hitting )
( bolts or wipers during this pre-extrusion warmup.     )
( If this happens to you, you can change the values for )
( the X and Y positions in the following code.          )
( The goal is to have the toolhead wipe its initial     )
( extrusion near the edge of the platform, [anchor it]  )
( so as not to have it interfere with the print.        )
( This file can be found in:                            )
( replicatorg/skein_engines/skeinforge-##/skeinforge_application/ )
( prefs/<profile name [e.g. Thingomatic-ABP-Mk7]>/alterations )
G1 X25 Y-60 Z10 F3300.0 (move to waiting position)
M6 T0 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)
G0 X25 Y-57 (Position Nozzle)
G0 Z0.6     (Position Height)
M108 R4.0   (Set Extruder Speed)
M101        (Start Extruder)
G4 P1500    (Create Anchor)
(**** end pre-wipe commands ****)
(**** end of start.gcode ****)
