# Lumen Player 5 Reference Guide

Developed by Urbanscreen, Lumen Player 5 is an advanced module created using Derivative TouchDesigner-TouchPlayer. It facilitates seamless communication between TagTool software for creative collaboration and the mediaserver for displaying the output on multiple screens, recording and further processing. This guide aims to provide a comprehensive overview of its functionalities, technical requirements, setup process, and troubleshooting.

## Core Features:

- **Real-Time Display:** Integrates with TagTool via Spout to display real-time images.
- **Player Module:** Manages video and image playback, removal, and preview from three designated folders.
- **Masking:** Offers custom masking options for projections on architectural structures.
- **Recording:** Captures videos from TagTool in various formats and qualities, complete with hotkey access and a recording indicator.
- **Settings Adjustment:** Customizable settings for file storage locations, hotkeys, and masking.
- **Multi-Beamer Mapping:** Supports up to 10 beamers and control screens, with customizable screen layouts, grid assistance, and saved warping settings.
- **Control Panel:** An optional compact panel for quick settings access.

## Technical Requirements:

- **Software:** Latest version of Derivative TouchDesigner (2023+), TagTool software (1.4.4-b5 +).
- **Hardware:**
  - PC (Windows 10 or 11) with at least 8GB RAM, a modern processor, mouse, and keyboard.
  - Multi-Screen Support: Suitable video card and corresponding screens.
  - TagTool Painting: iPad with TagTool installed, WLAN Router.

---

## Detailed Lumen Player 5 Setup Process

### Downloading LumenPlayer:

- Access the latest version of LumenPlayer at [Lumen Player GitHub](https://github.com/davinel000/lumen-player).
- You have the option to either download it as a zip file or clone the repository directly to your desired location on your system.

### Beamer Layout Setup:

1. Use Windows Display Settings or Nvidia Device Manager to configure the screen grid, choosing a layout that fits your setup (linear or grid).
2. Accurately adjust the relative positions of each screen in your layout. Incorrect settings may lead to improper display or image cutoff.
3. For setups using a control screen, position it to the left of all projection screens. The default projection alignment is top-right, but this can be altered in the multibeamer settings.
4. If using Nvidia Quadro or similar cards with EDID profile functionality, configure these settings for better stability.

### Setting up the TagTool:

1. Download the latest TagTool version compatible with LumenPlayer 5 (as of December 2024, tested with TagTool 1.4.4 beta5) from [TagTool download page](https://www.omai.at/tagtool#versions)
2. Place the TagTool folder inside the LumenPlayer root directory for streamlined access.
3. Activate the Spout session in TagTool for seamless imagery transfer to LumenPlayer, which is set by default when starting from the autostart CMD file.
4. Adjust the canvas and output resolution in TagTool under **Menu -> Graphics -> Canvas format**.
5. For iPad connectivity, ensure both devices are on the same network and start a new session in TagTool under **Network -> New Session -> Local Network**.
6. Often, after installing a new version of TagTool, the iPad can't connect to the session (doesn't see it even if both devices are in the same network). To resolve connection issues with the iPad, ensure the application has network access in the Windows firewall settings. Go to Start > Settings > Privacy & Security > Windows Security > Firewall & network protection > Allow an app through firewall. Click Change settings, find the app in the list, and ensure its checkbox is selected. Check both Private and Public network boxes if applicable. If the app is missing, click Allow another app, browse for the executable, and add it. Save changes and retry the connection.

### Setting up Shortcuts and Starting LumenPlayer:

1. Check the functionality of shortcuts in the `bin/shortcuts` directory, ensuring they launch TagTool, TouchPlayer, and TouchDesigner correctly.
2. If any shortcut isn't functioning, adjust its file location settings or create new ones while keeping their original names (`TouchDesigner_shortcut`, `Tagtool_shortcut`, `TouchPlayer_shortcut`). The easiest way is to create a shortcut for existing TD or Tagtool executable, rename it as above and put into the shortcuts folder.
3. Use the `autostart_lumen.cmd` file to start both TagTool and LumenPlayer. This process also creates folders for content storage. The applications can also be opened separately with `autostart_touchplayer.cmd` and `autostart_tagtool.cmd`.

### Setting up Autostart for Lumen Player on a PC:

1. Ensure your PC bypasses the Windows logon screen at startup (this can be configured in the Registry Editor). You can check some info on the topic here [TD-Multimapping GitHub](https://github.com/davinel000/td-multimapping)
2. Place the shortcut of the `autostart_lumen.cmd` file (not the file itself) in the startup folder: `C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`.

### Setting up the Multibeamer Module:

1. Open the multibeamer parameters window (default shortcut `Ctrl+F8`).
2. Create a new mapping project under the **"New" Tab**. Enter the project name, set the number of beamers, and click **Create**. A new folder will be generated in the `/mapping_settings` directory with all necessary configuration files. The message "Project is ready to use" will confirm successful setup.
3. In the **'Res Tab'**, configure the resolution settings:
   - **Fit to Resolution:** Matches your content's width and height to the projector layout. Ensure your content resolution aligns with this setting.
   - **Beamers in a Row:** For a single line, set the total number of projectors. For grids, specify the number of projectors per row (e.g., 3 for a 3x2 grid).
   - **Beamer Resolution:** Specify the overall resolution of your layout. For example:
     - A line of 6 FHD projectors = `11520x1080`.
     - A 3x2 grid = `5760x2160`.
   - **Justify Horizontal/Vertical:** Aligns content based on your system's screen configuration. By default, it's **Right Top**, so ensure your control screen is positioned left (and lower, if applicable) relative to your layout.
4. Open the **"General Tab"** and manage:
   - Masks, settings, and calibration modes.
   - Add a full grid or Stoner grid for fine-tuning image corrections.
5. For keystone adjustments, use the Stoner interface to refine alignment, then save settings for each projector.
6. For updates of the module, Visit the TD-Multimapping repository for updates.you can check it's repository here [https://github.com/davinel000/td-multimapping](https://github.com/davinel000/td-multimapping), and replace existing .tox in your LumenPlayer sketch.  

---

## Troubleshooting:

- **Lumen Player doesn't start:** Check installed TouchPlayer, correct shortcuts, the latest TagTool in the Tagtool folder.
- **TagTool outputs version error when starting:** Replace the current TagTool with the latest version from the link.
- **Image Misalignment:** If the image on the screens is not matching their location, check the mapping settings.
- **Image not Warped:** Verify if the mapping is active in the Settings menu or in the multibeamer module.
- **Unwanted Grid/Calibration Image:** Ensure the grid/calibration image/numbers toggles are off in the multibeamer module.

## Default Hotkeys (Ctrl+):

- **F1** to **F12** for various modes and settings.
- **Ctrl+Shift+M** as a backup for opening the Mapping settings menu.

---

## Version and Contact:

- **Lumen Player 5, Ver. 5.1 (20.12.2024).**
- For support questions, email [davinel000@gmail.com](mailto\:davinel000@gmail.com).

