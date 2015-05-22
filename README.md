xcode-canvas-color
===============

A simple Xcode IDE Plugin that changes the background color of the storyboard editor.

### Installation and Usage

- Simply compile the Xcode project and the plugin will automatically be installed. After installing, restart Xcode.
- The color is currently hard coded to a light gray color. This can be changed in `NSView+CanvasBackground.m`.

![screenshot](/../gh-pages/screenshot.png?raw=true)

### Note on Xcode version compatibility

Xcode doesn't have an official plugin API and this plugin won't be loaded for new versions of Xcode. In order to fix this, the Info.plist of the plugin must be edited to include the latest DVTPlugInCompatibilityUUID.

Here are the steps to do this manually:

# In Finder, right click Xcode.app and click Show Package Contents
# Copy the Contents/Info.plist file to a temporary location (e.g. /tmp)
# Use the `plutil` command to convert it into a human-readable format: `plutil -convert xml1 /tmp/Info.plist`
# Open the converted plist file in a text editor and copy the value of the DVTPlugInCompatibilityUUID key
# Add the value to the array called DVTPlugInCompatibilityUUIDs inside the plugin's Info.plist