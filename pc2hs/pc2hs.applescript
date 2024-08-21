-- Define the run handler to accept command-line arguments
on run argv
    -- Check if any arguments are provided
    if (count of argv) > 0 then
        set presetName to item 1 of argv
    else
        display dialog "No preset name provided. Exiting."
        return
    end if

    tell application "System Events"
        -- Activate Ableton Live
        tell application "Live"
            activate
        end tell

        -- Simulate the Hot-Swap key press (default is 'Q')
        tell application process "Ableton Live"

            -- Assumes 1 bound to the track we want to select
	    key code 18 -- sends 1 key
	    delay 1

            key code 12 -- Q key
            delay 0.5 -- Allow time for Hot-Swap mode to activate

            -- Clear Existing search
            key code 53 -- This sends the Esc key
            delay 1

            -- Open the search field
            keystroke "f" using {command down}

            -- Type the preset name
            keystroke presetName
            delay 1 -- Allow time for search results to update

            -- Press the down arrow key to navigate to the first search result
            key code 125
            delay 0.1

            -- Press Enter to select the preset
            key code 36 -- Enter key
            delay 0.1

            key code 53 -- This sends the Esc key
	    delay 0.1

            key code 12 -- Q key
            delay 0.5 -- Allow time for Hot-Swap mode to deactivate

        end tell
    end tell
end run

