# gamemaker-3d-io
A Blender addon which exports 3D models to a format that GameMaker Studio 2 will read natively.

This is a continuation of the GameMaker D3D and GML script addons for Blender 2.7x, recreated from the ground up to work with Blender 2.93. This version of the addon can export directly to a vertex buffer format that GameMaker Studio 2 will load/read natively, or to a GML script (mostly for debugging purposes) that can be put into a GameMaker project.

Not all of the options from the original plugin are present in this version, but most were superfluous and didn't need to be carried over.

This addon is a work-in-progress; thanks for your patience!

### How to install:
- Download the Zip of the latest version of the addon from the **download** directory
- Open Blender, then go to Edit > Preferences, and select the Addons tab on the left
- Click Install... at the top right of the window, then find and select the downloaded Zip file
- Check the box to the left of Import-Export: GameMaker Studio 2 3D format to enable the addon

### How to use:
- Create a 3D model for your game, then select it
- Go to File > Export > GameMaker 3D (.buf, .gml)
- Choose the appropriate options, and click Export
- Depending on which export format you chose:
  - For vertex buffers, load the file into your GameMaker project as a buffer, convert to a vertex buffer, and submit the buffer for drawing/shaders
  - For GML output, open the file, copy and paste the function into your project, then call it in your game to build the model

