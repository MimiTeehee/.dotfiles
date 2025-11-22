-- Java methods defined by the "jingle" library automatically converted to lua functions for scripting environment usage.

jingle = {}

--- Opens the specified file as if it were double-clicked in file explorer.
--- @param filePath string
--- @return nil
function jingle.openFile(filePath) end

--- Opens the instance's world to lan.
--- @param alreadyPaused boolean|nil
--- @param enableCheats boolean
--- @return nil
function jingle.openToLan(alreadyPaused, enableCheats) end

--- Returns true if the instance is active, otherwise false.
--- @return boolean
function jingle.isInstanceActive() end

--- Dumps the OBS eye measuring projector to the bottom of the window Z order.
--- @return nil
function jingle.dumpMeasuringProjector() end

--- Sets the any available eye measuring projectors to be directly behind the instance, bringing it above everything except for the game itself.
--- @return nil
function jingle.showMeasuringProjector() end

--- Logs a message to the Jingle log.
--- @param message string
--- @return nil
function jingle.log(message) end

--- Registers a function to an event. Returns true if successfully added.
--- Events: START_TICK, END_TICK, MAIN_INSTANCE_CHANGED, STATE_CHANGE, EXIT_WORLD, ENTER_WORLD
--- @param eventName string
--- @param listenFunction function
--- @return boolean
function jingle.listen(eventName, listenFunction) end

--- Sleeps for the specified amount of milliseconds.
--- @param millis number
--- @return nil
function jingle.sleep(millis) end

--- @return string
function jingle.getScriptName() end

--- Gets the position of the mouse.
--- @return number
--- @return number
function jingle.getMousePosition() end

--- Gets the current time in milliseconds.
--- @return number
function jingle.getCurrentTime() end

--- Registers the customization function for this script. If a user presses the "Customize" button for this script, the given function will be ran.
--- @param customizationFunction function
--- @return nil
function jingle.setCustomization(customizationFunction) end

--- Registers an extra function for this script. If a user presses the button of the given name found next to this script, the given function will be ran.
--- @param functionName string
--- @param extraFunction function
--- @return nil
function jingle.addExtraFunction(functionName, extraFunction) end

--- Sets the current Windows cursor speed.
--- @param speed number
--- @return nil
function jingle.setCursorSpeed(speed) end

--- Runs a resize toggle of the given width and height. Returns true if the size is applied, and returns false if the size is undone.
--- @param width number
--- @param height number
--- @return boolean
function jingle.toggleResize(width, height) end

--- Gets a more detailed state of the "INWORLD" state. Returns "UNPAUSED", "PAUSED", or "GAMESCREENOPEN".
--- @return string
function jingle.getInstanceInWorldState() end

--- Gets the last time the specified state started. Input values are equal to return values given by jingle.getInstanceInWorldState().
--- @param stateName string
--- @return number
function jingle.getLastStateStartOf(stateName) end

--- Gets the last time the specified state ended. Input values are equal to return values given by jingle.getInstanceInWorldState().
--- @param stateName string
--- @return number
function jingle.getLastStateOccurrenceOf(stateName) end

--- Adds a text field to the customization menu. Should be eventually followed by jingle.showCustomizationMenu().
--- @param key string
--- @param defaultVal string
--- @param validator function
--- @return nil
function jingle.addCustomizationMenuTextField(key, defaultVal, validator) end

--- Adds a check box to the customization menu. Should be eventually followed by jingle.showCustomizationMenu().
--- @param key string
--- @param defaultVal boolean
--- @param checkBoxLabel string
--- @return nil
function jingle.addCustomizationMenuCheckBox(key, defaultVal, checkBoxLabel) end

--- Checks if a script of the specified name exists.
--- @param scriptName string
--- @return boolean
function jingle.scriptExists(scriptName) end

--- Checks if the instance has a mod of the specified modid.
--- @param modid string
--- @return boolean
function jingle.hasFabricMod(modid) end

--- Sends a chat message in the instance. A slash needs to be given if executing a command (eg. jingle.sendChatMessage("/kill")). Returns true if successful.
--- @param message string
--- @return boolean
function jingle.sendChatMessage(message) end

--- Sets and stores a customizable string.
--- Values stored are only accessible to runs of this script and are persistent through Jingle restarts.
--- @param key string
--- @param value string
--- @return nil
function jingle.setCustomizable(key, value) end

--- Gets a table of all modids for the instance.
--- @return table
function jingle.getFabricMods() end

--- Replicates a hotkey action exactly. For example, jingle.replicateHotkey('script','test.lua:Test Hotkey')
--- @param type string
--- @param action string
--- @return boolean
function jingle.replicateHotkey(type, action) end

--- Retrieves a value from the instance's options.txt.
--- @param optionName string
--- @return string
function jingle.getInstanceOption(optionName) end

--- Gets the current state of the instance. Returns "WAITING", "INWORLD", "TITLE", "GENERATING", "WALL", or "PREVIEWING".
--- @return string
function jingle.getInstanceState() end

--- Sends a key down and up message to the instance with no delay between.
--- @param key number
--- @return nil
function jingle.sendKeyToInstance(key) end

--- Gets the instance path, useful for checking what instance is being used for conditional hotkeys.
--- @return string
function jingle.getInstancePath() end

--- Gets the current Windows cursor speed.
--- @return number
function jingle.getCursorSpeed() end

--- Gets a stored customizable string. A default value can optionally be provided in the case that no value is found in the customizables storage.
--- @param key string
--- @param def string|nil
--- @return string
function jingle.getCustomizable(key, def) end

--- Clears all but the last 5 worlds the instance, or for all instances ever seen if clearFromAllSeenInstances is set to true.
--- @param clearFromAllSeenInstances boolean
--- @return nil
function jingle.clearWorlds(clearFromAllSeenInstances) end

--- Closes the instance.
--- @return nil
function jingle.closeInstance() end

--- Shows a message in a message box to the user.
--- @param message string
--- @return nil
function jingle.showMessageBox(message) end

--- Sends a key down and up message to the instance with a specified delay between.
--- @param key number
--- @param millis number
--- @return nil
function jingle.sendKeyHoldToInstance(key, millis) end

--- Gets the version of a fabric mod installed on the instance.
--- @param modid string
--- @return string
function jingle.getFabricModVersion(modid) end

--- Shows the customization menu with all added elements since the last call to showCustomizationMenu.
--- @return boolean
function jingle.showCustomizationMenu() end

--- Adds a text to the customization menu. Should be eventually followed by jingle.showCustomizationMenu().
--- @param text string
--- @return nil
function jingle.addCustomizationMenuText(text) end

--- Compares two version strings. Examples:
--- jinglecompareVersionStrings("1.0.0", "1.0.1") -> -1
--- jinglecompareVersionStrings("1.1.0", "1.0.1") -> 1
--- jinglecompareVersionStrings("1.1.0", "1.1.0") -> 0
--- jinglecompareVersionStrings("mario", "1.1.0", 100) -> 100
--- @param a string
--- @param b string
--- @param onFailure number
--- @return number
function jingle.compareVersionStrings(a, b, onFailure) end

--- Sends a key up message to the instance.
--- @param key number
--- @return nil
function jingle.sendKeyUpToInstance(key) end

--- Sends a key down message to the instance.
--- @param key number
--- @return nil
function jingle.sendKeyDownToInstance(key) end

--- Retrieves a minecraft key option from the instance's standard options or options.txt and converts it into a Windows key integer.
--- @param keyOptionName string
--- @return number
function jingle.getInstanceKeyOption(keyOptionName) end

--- Retrieves a value from the instance's standard options.
--- @param optionName string
--- @return string
function jingle.getInstanceStandardOption(optionName) end

--- Registers a hotkey action. If a user sets up a hotkey with the given hotkey action name and then presses their set hotkey, the given function will be ran.
--- @param hotkeyName string
--- @param hotkeyFunction function
--- @return nil
function jingle.addHotkey(hotkeyName, hotkeyFunction) end

--- Undoes any resizing applied by jingle.toggleResize().
--- @return nil
function jingle.undoResize() end

--- Presents the user with a message and Yes/No/Cancel buttons. Returns true for yes, false for no, and nil for cancel or if the user closes the window.
--- @param message string
--- @return boolean|nil
function jingle.askYesNo(message) end

--- Presents the user with a text input box and returns the string entered, or nil if they cancel/close the prompt without pressing Ok.
--- @param message string
--- @param startingVal string|nil
--- @param validator (fun(input: string): boolean)|nil
--- @return string|nil
function jingle.askTextBox(message, startingVal, validator) end