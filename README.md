# gamemaker-3d-io
A Blender addon which exports 3D models to a format that GameMaker Studio 2 will read natively.

This is a continuation of the GameMaker D3D and GML script addons for Blender 2.7x, recreated from the ground up to work with [Blender 2.93](https://blender.org). This version of the addon can export directly to a vertex buffer format that [GameMaker Studio 2](https://www.yoyogames.com/en/gamemaker) will load/read natively, or to a GML script (mostly for debugging purposes) that can be put into a GameMaker project.

Not all of the options from the original plugin are present in this version, but most that were removed were superfluous and didn't need to be carried over.

This addon is a work-in-progress; thanks for your patience!

### Features
- gamemaker-3d-io is an easy way to get objects from Blender to GameMaker Studio 2, using GameMaker's native buffer format
- Objects can alternatively be exported to a GML script for importing/debugging
- Exports models with normals, vertex colors, and UV coordinates included
- Supports any model which can be broken into triangle lists - support for line lists and point lists is planned for the future

### How to install:
1. Download the Zip of the latest version of the addon from the [download](https://github.com/massivecatapult/gamemaker-3d-io/tree/main/download) directory
1. Open Blender, then go to Edit > Preferences, and select the Addons tab on the left
1. Click Install... at the top right of the window, then find and select the downloaded Zip file
1. Check the box to the left of Import-Export: GameMaker Studio 2 3D format to enable the addon

### How to use:
1. Create a 3D model for your game, then select it
1. Go to File > Export > GameMaker 3D (.buf, .gml)
1. Choose the appropriate options, and click Export
1. Depending on which export format was chosen:
   - For vertex buffers, load the file into a GameMaker project as a buffer, convert to a vertex buffer, and submit the buffer for drawing/shaders
   - For GML output, open the file, copy and paste the function into a GameMaker project, then call it in your game to build the model

### Export Options
- **Use World Origin:** If selected, the object's position will be applied before it is output, which will set the object's origin to the world origin. If unselected, the object will retain its original origin point.
- **Apply Modifiers:** If selected, the object's modifiers will be applied to the model before it is output, which will make the output retain the same appearance as in Blender.
- **Flip On Y:** Flips/mirrors the object's Y coordinates before it is output. This action will pivot around the object's origin, which will also be the world origin if **Use World Origin** is selected. This can help ensure that the object looks correct in GameMaker's 3D view.
- **Flip UV Coordinates:** Flips the object's UV coordinates (on Y), which can help ensure that textures draw properly once in GameMaker.
- **Scale:** Additional scaling to apply to the object before output, which can be useful if there is a disparity between your workspace in Blender and the size of objects in GameMaker.
- **Output Type:** Choose either between vertex buffers or GML output. Vertex buffers are external files that can be loaded directly into GameMaker at runtime, while GML files should be copied into GameMaker as scripts/functions and used to build the vertex buffer at runtime. It is recommended to only use GML output for debugging, because the resulting scripts can be quite large.

### Tips
- Both output types currently only support trianglelists, and require a vertex format in GameMaker and use that when loading objects. The format for both is: position 3d, normal, color, and textcoord. If you output your object to GML, a copy of this formatting is included in a comment at the head of the script.
- To ensure that objects retain smooth/hard edges in GameMaker, consider setting the object to smooth shading, then using an Edge Split modifier and marking sharp edges where desired. Make sure to export with modifiers applied.
- Legacy versions of the script, which supported D3D and GML output for GameMaker Studio 1, are available here: https://github.com/massivecatapult/gamemaker-3d-io/tree/main/legacy
