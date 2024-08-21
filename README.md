# ProgramChange2HotSwap
Looks for incoming PC messages to trigger Hot Swaps

### Overview:
PC2HS is a crude, yet usable M4L device that triggers Device Hot-Swaps based on MIDI Program Change messages correlated to fully qualified device preset names in the config file. The device will only work currently on MacOS as it relies on AppleScript macros to search and load a preset device for one track.

### Requirements: 
1.  Only works with MacOS  - must have AppleScript (osascript)
2. Max "shell" object must be installed. See: https://github.com/jeremybernstein/shell/releases/tag/1.0b3
3. Tested on Live Suite 11
4. Currently only supports device hot-swaps for a single (1) track

### Steps for usage:
1. Create Config directory and note its PATH
2. Ensure that `pc2hs.applescript` is located in PATH
3. The `pc2hs.cfg` config file can be pre-created if desired with the following format: `pc#, presetname` .  Note: 0=pc1 and banks are not yet supported.
4. IMPORTANT: This solution assumes that the `1` key is mapped to the target track to perform HotSwaps on. Device should also be loaded into this track.

Here's an example file that works in my test environment. Note that it assumes presets with these names exist.
```
0, MF-HORITIC.aupreset;
1, MF-TRANS1.aupreset;

```
