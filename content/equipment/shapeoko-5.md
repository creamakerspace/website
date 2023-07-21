+++
title = "Shapeoko 5 CNC Router"
updated = "2023-07-20"
template = "sop.html"
description = "CNC Router for cutting and engraving wood, most plastics, and some metals."
weight = 500

[extra]
image = "/images/equipment/shapeoko-5-pro.webp"
requires_training = true
tags = "woodshop cnc"

[extra.specs]
"Cutting area" = '48" x 48" x 4"'
"Supported materials" = "All types of wood, most plastics, and some alloys of aluminum, brass, and copper"
+++

![](/images/equipment/shapeoko-5-pro.webp)

The Shapeoko 5 CNC Router is a versatile and precise tool used for computer-controlled cutting and carving of various materials.

## Risks

- Risk of injury due to moving parts, sharp cutting tools, or material ejection.
- Electrical hazards from the power source and components.
- Possibility of damaging the machine or workpiece due to incorrect setup or operation.

## Glossary

- CNC Router: A computer numerical control machine that uses rotating cutting tools to remove material from a workpiece.
- G-Code: A programming language used to control CNC machines, specifying toolpaths and operations.

## Materials

The materials supported is determined primarily by the limitations of a specific endmill or router bit. In general, the router can be used with:

- All types of wood
- Most plastics (ABS, Acrylic, Polycarbonate, Delrin, HDPE, PEEK, PVC)
- Some alloys of aluminum, brass, and copper

## Procedures

### Material Preparation and Workholding
1. Measure your material dimensions. Ensure your thickness measures are precise (and check for variances in thickness at different parts of your material).
1. Fasten your material securely to the CNC Router's bed.


### Generating Toolpaths and G-code
1. Create a new project in Carbide Create using your material measurements. Take note of the origin point (circle symbol, usually the lower left corner).
1. Create or import your design. 
1. Add tabs as necessary to through cuts that could cause the piece to move during the cut.
1. Generate toolpaths for each layer of your design
	1. Choose a toolpath type (e.g. Contour, Pocket, VCarve)
	1. Choose a tool, setting the cutting parameters, such as feed rates, plunge rates (recommend using the default for the tool)
	1. Set the cutting depth
	1. Order your cuts: through cuts are usually last, and order them to minimize tool changes.
1. View the simulation and ensure it matches your expectations
1. Generate the G-code in Carbide Create and save it.

### Initializing CNC Router for Cutting
1. Power on the CNC router (both the main power and the controller box)
1. Ensure the workbed is clear of body parts, clothing, or other objects that could get in the way of the moving parts 
1. Open Carbide Motion and connect to the router
1. Choose Initialize Router. This will move the router head and measure the current bit
1. Leaving the bit at least an inch above the workpiece, use the Jog controls to move it to the origin point from your design (usually the bottom left corner)
1. Align the center of the bit with the corner of your workpiece. Adjust the "step" to move the router in smaller increments. Also use the Z control buttons to lower the router bit until it barely touches your workpiece. As a guide, it is useful to place a piece of paper on the material, and stop adjusting the Z as soon as you can't move the paper freely.
1. Click "Zero All". This is now the zero point that will match the origin from your design.
1. Use Z+ to move the bit away from the material again

### Cutting and Engraving you 
1. Choose the appropriate cutting tool for the job, making sure it is sharp and clean.
2. Install the cutting tool into the CNC Router's collet, following the manufacturer's instructions for proper tightening.
3. Set the tool's origin and zero position accurately, based on the design and material dimensions.

### CNC Router Operation
1. Load the saved G-code into Carbide Motion
1. Click Start.
1. When prompted, insert the tool (bit or endmill) requested. After inserting a new tool and clicking continue, the CNC Router will re-measure the tool so you don't have to re-zero the Z axis.
1. When prompted to turn on the router, turn on both the router and the shop vacuum for dust collection. Then press continue, and the cutting will start. If your toolpath contained tool changes, Carbide Motion will prompt you to turn off the router, change the tool, and turn it back on when needed.

<article class="message is-warning">
  <div class="message-body">

Do NOT leave the CNC router unattended while running. You may pause the cutting in the Carbide Create software if you must step away for a moment.

Keep your body and clothing clear of the workspace, and keep the workbed free of other obstructions.

Press the Emergency Stop button if you need to immediately power down the entire machine.

  </div>
</article>


### Finishing
1. When the cutting is complete, Carbide Motion will prompt you to turn off the router. Once confirmed, it will move the router to the back corner.
1. Once the moving parts come to a stop, you can remove your material.
1. Turn the machine and controller off.

## References
- [Carbide 3D Shapeoko 5 Resources](https://my.carbide3d.com/gettingstarted/shapeoko5pro/)
- [Carbide 3D Shapeoko Operation Videos](https://my.carbide3d.com/running-a-shapeoko-course/)
- [Carbide Create Videos](https://my.carbide3d.com/carbide-create-course/)
- [Shapeoko GitBook](https://shapeokoenthusiasts.gitbook.io/shapeoko-cnc-a-to-z/)
- [Cutters & Collets Guide](https://shapeokoenthusiasts.gitbook.io/shapeoko-cnc-a-to-z/cutters) 