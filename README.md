# Lumen Player 5 Reference Guide

Developed by UrbanScreen, Lumen Player 5 is an advanced module created using TouchDesigner. It facilitates seamless communication between TagTool software for creative collaboration and the mediaserver. This guide aims to provide a comprehensive overview of its functionalities, technical requirements, setup process, and troubleshooting.

## Core Features:

- **Real-Time Display:** Integrates with TagTool via Spout to display real-time images.
- **Player Module:** Manages video and image playback, removal, and preview from three designated folders.
- **Masking:** Offers custom masking options for projections on architectural structures.
- **Recording:** Captures videos from TagTool in various formats and qualities, complete with hotkey access and a recording indicator.
- **Settings Adjustment:** Customizable settings for file storage locations, hotkeys, and masking.
- **Multi-Beamer Mapping:** Supports up to 10 beamers and control screens, with customizable screen layouts, grid assistance, and saved warping settings.
- **Control Panel:** An optional compact panel for quick settings access.

## Technical Requirements:

- **Software:** Latest version of Derivative TouchDesigner (2022+), Tagtool software.
- **Hardware:** PC (Windows) with at least 8GB RAM, a modern processor, mouse, and keyboard.
- **Multi-Screen Support:** Suitable video card and corresponding screens.
- **TagTool Painting:** iPad with TagTool installed, WLAN Router.

## Detailed Lumen Player 5 Setup Process

### Downloading LumenPlayer:
- Access the latest version of LumenPlayer at [Lumen Player GitHub](https://github.com/davinel000/Lumen-Player).
- You have the option to either download it as a zip file or clone the repository directly to your desired location on your system.

### Beamer Layout Setup:
- Use Windows Display Settings or Nvidia Device Manager to configure the screen grid, choosing a layout that fits your setup (linear or grid).
- Accurately adjust the relative positions of each screen in your layout. Incorrect settings may lead to improper display or image cutoff.
- For setups using a control screen, position it to the left of all projection screens. The default projection alignment is top-right, but this can be altered in the multibeamer settings.
- If using Nvidia Quadro or similar cards with EDID profile functionality, it's crucial to configure these settings for better stability.

### Setting up the TagTool:
- Download the latest TagTool version compatible with LumenPlayer 5 (as of January 2024, tested with TagTool 1.4.0 beta24) from [TagTool's Website](https://www.tagtool.org/).
- It's recommended to place the TagTool folder inside the LumenPlayer root directory for streamlined access.
- Activate the Spout session in TagTool for seamless imagery transfer to LumenPlayer, which is set by default when starting from the autostart CMD file.
- Adjust the canvas and output resolution in TagTool under Menu -> Graphics -> Canvas format.
- For iPad connectivity, ensure both devices are on the same network and start a new session in TagTool under Network -> New Session -> Local Network.

### Setting up Shortcuts and Starting LumenPlayer:
- Check the functionality of shortcuts in the bin/shortcuts directory, ensuring they launch TagTool, TouchPlayer, and TouchDesigner correctly.
- If any shortcut isn't functioning, adjust its file location settings or create new ones while keeping their original names (TouchDesigner_shortcut, Tagtool_shortcut, TouchPlayer_shortcut).
- Use the autostart_lumen.cmd file to start both TagTool and LumenPlayer. This process also creates folders for content storage. The applications can also be opened separately with autostart_touchplayer.cmd and autostart_tagtool.cmd.

### Setting up Autostart for Lumen Player on a PC:
- Ensure your PC bypasses the Windows logon screen at startup (this can be configured in the Registry Editor).
- Place the shortcut of the autostart_lumen.cmd file (not the file itself) in the startup folder: `C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`.

### Setting up the Multibeamer Module:
- Open the multibeamer parameters window (default shortcut Ctrl+F8).
- Create a new mapping project under the "New" Tab. Enter the project name, set the number of beamers, and click 'Create'. This action will create the necessary folders and tabs within the multibeamer module.
- In the 'Res Tab', configure the resolution settings. Set the 'Fit to resolution' and 'Beamers in a row' parameters based on your content and layout. Adjust the 'Beamer resolution' to match the total resolution of your layout.
- Under the 'General Tab', manage mask settings, calibration modes, and check the layout of the beamers. Use full grid or Stoner grid for precise image adjustment.
- For keystone adjustments, go to the respective beamer tabs (B1-BN) and use the Stoner interface for fine-tuning. Save each mapping upon completion.

### Operating the Player Module (Ctrl+F11):
- The player module contains mode selection buttons for TagTool, folders 1-3, and a dark screen.
- Features include displaying TagTool output, previewing and playing videos, removing videos, and recording from TagTool.
- Use the right mouse button to remove videos, which are then moved to a "removed" folder.

### Operating the Settings Module (Ctrl+F12):
- This module allows you to customize keystone and mask settings, set custom video playback folders, and adjust image/video formats.
- Configure file display limits, sorting orders, preview elements, resolution, layout settings, and autosave options.
- Manual saving of settings is also available for backup.

## Troubleshooting:
- **Lumen Player doesn't start:** Check installed TouchPlayer, correct shortcuts, the latest TagTool in the Tagtool folder.
- **TagTool outputs version error when starting:** Replace the current TagTool with the latest version from the link.
- **Image Misalignment:** If the image on the screens is not matching their location, check the mapping settings.
- **Image not Warped:** Verify if the mapping is active in the Settings menu or in the multibeamer module.
- **Unwanted Grid/Calibration Image:** Ensure the grid/calibration image/numbers toggles are off in the multibeamer module.

## Default Hotkeys (Ctrl+):
- F1 to F12 for various modes and settings.
- Ctrl+Shift+M as a backup for opening the Mapping settings menu.

## Version and Contact:
- **Lumen Player 5, Ver. 5 (04.01.2023).**
- For support, email [davinel000@gmail.com](mailto:davinel000@gmail.com).
