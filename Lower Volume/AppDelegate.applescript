--
--  AppDelegate.applescript
--  Lower Volume
--
--  Created by Ryan on 11/9/14.
--  Copyright (c) 2014 Ry141. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
    on ViewLog_(sender)
        set userName to short user name of (system info)
                display dialog "Loading..."default button 2
        set filepath to POSIX path of "/Users/"&userName&"/Desktop/MultiTasker.app/Contents/Resources/Lower Volume Results.RTF"
        try
            set command to "open " & quoted form of filepath
            do shell script command
        end try
    end ViewLog_
    
    on helpfile_(sender)
        set userName to short user name of (system info)
        display dialog "Loading..."default button 2
        set filepath to POSIX path of "/Users/ryan/Desktop/MultiTasker.app/Contents/Resources/Help.RTF"
        try
            set command to "open " & quoted form of filepath
            do shell script command
        end try
        end helpfile_
    
    on iTunesVolume_(Sender)
              set userName to short user name of (system info)
                     display dialog "Loading..."default button 2
        display dialog "Loading..."default button 2
        set userName to short user name of (system info)
        display dialog "Change Volume" buttons {"Computer", "iTunes"} default button 2
        set which to the button returned of the result
        if which is "iTunes" then
            display dialog "You Have Selected To Change Volume For iTunes" default button 2
            display dialog "Script Complete Options" buttons {"Shut Down", "Sleep"} default button 2
            set option to the button returned of the result
            if option is "Sleep" then
                display dialog "Set Timer in Minutes" default answer "60" default button 2
                set initial to the text returned of the result
                set time2 to initial * 60
                set time1 to time2 / 10
                set display to time1 / 60
                display dialog "Volume Will Be Decreased By 10,This Will Be Done With " & display & " Minute Intervals." buttons ("Begin") default button 1
                set starts to current date
                tell application "iTunes"
                    set the sound volume to (sound volume + 100)
                    repeat until sound volume ≤ 0
                        --display dialog sound volume as string --convert int to string
                        delay time1
                        set the sound volume to (sound volume - 10)
                    end repeat
                    stop track
                    set the sound volume to (sound volume + 100)
                end tell
                set filepath to POSIX path of "/Users/"&userName&"/Desktop/MultiTasker.app/Contents/Resources/Lower Volume Results.RTF"
                try
                    set command to "open " & quoted form of filepath
                    do shell script command
                end try
                tell application "System Events"
                    delay 1
                    keystroke "Program Run On:" & starts
                    keystroke return
                    keystroke "Volume Changed:" & which
                    keystroke return
                    
                    if initial < 10 then
                        keystroke "Duration:0" & initial & " Minutes"
                        keystroke return
                        keystroke "Program Started:" & starts
                        keystroke return
                        keystroke "Program Ended:" & (current date)
                        keystroke return
                        delay 1
                        keystroke return
                        keystroke "s" using command down
                        delay 5
                        sleep
                        else
                        keystroke "Duration:" & initial & " Minutes"
                        keystroke return
                        keystroke "Program Started:" & starts
                        keystroke return
                        keystroke "Program Ended:" & (current date)
                        keystroke return
                        delay 1
                        keystroke return
                        keystroke "s" using command down
                        delay 3
keystroke "q"using command down
                        delay 1
                        sleep
                    end if
                end tell
                else
                display dialog "Make Sure All Other Applicatons Besides iTunes Are Not Active/Have Been Quit."
                display dialog "Set Timer in Minutes" default answer "60" default button 2
                set initial to the text returned of the result
                set time2 to initial * 60
                set time1 to time2 / 5
                set display to time1 / 60
                if display ≤ 12 then
                    display dialog "Volume Will Be Decreased By 10,This Will Be Done With " & display & " Minute Intervals." buttons ("Begin") default button 1
                    tell application "iTunes"
                        set the sound volume to (sound volume + 100)
                        repeat until sound volume ≤ 0
                            --display dialog sound volume as string --convert int to string
                            delay time1
                            set the sound volume to (sound volume - 10)
                        end repeat
                        stop track
                        set the sound volume to (sound volume + 100)
                    end tell
                    set filepath to POSIX path of "/Users/"&userName&"/Desktop/MultiTasker.app/Contents/Resources/Lower Volume Results.RTF"
                    try
                        set command to "open " & quoted form of filepath
                        do shell script command
                    end try
                    tell application "System Events"
                        delay 1
                        keystroke "Program Run On:" & starts
                        keystroke return
                        keystroke "Volume Changed:" & which
                        keystroke return
                        if initial < 10 then
                            keystroke "Duration:0" & initial & " Minutes"
                            keystroke return
                            keystroke "Program Started:" & starts
                            keystroke return
                            keystroke "Program Ended:" & (current date)
                            keystroke return
                            delay 1
                            keystroke return
                            keystroke "s" using command down
                            delay 5
                            shut down
                            else
                            keystroke "Duration:" & initial & " Minutes"
                            keystroke return
                            keystroke "Program Started:" & starts & "
                            Program Ended:" & (current date)
                            keystroke return
                            keystroke "Program Ended:" & (current date)
                            keystroke return
                            delay 1
                            keystroke return
                            keystroke "s" using command down
                            delay 3
                            keystroke "q"using command down
                            delay 1
                            shut down
                        end if
                    end tell
                end if
            end if
            else
            display dialog "You Have Selected To Change Volume For Computer" default button 2
            display dialog "Script Complete Options" buttons {"Shut Down", "Sleep"} default button 2
            set option to the button returned of the result
            if option is "Sleep" then
                display dialog "Set Timer in Minutes" default answer "60" default button 2
                set initial to the text returned of the result
                set time2 to initial * 60
                set time1 to time2 / 10
                set display to time1 / 60
                display dialog "Volume Will Be Decreased By 10,This Will Be Done With " & display & " Minute Intervals." buttons ("Begin") default button 1
                set starts to current date
                set volume of 100
                delay time1
                set volume of 90
                delay time1
                set volume of 80
                delay time1
                set volume of 70
                delay time1
                set volume of 60
                delay time1
                set volume of 50
                delay time1
                set volume of 40
                delay time1
                set volume of 30
                delay time1
                set volume of 20
                delay time1
                set volume of 10
                delay time1
                set volume of 0
                delay 1
                set volume of 100
                
                set filepath to POSIX path of "/Users/"&userName&"/Desktop/MultiTasker.app/Contents/Resources/Lower Volume Results.RTF"
                try
                    set command to "open " & quoted form of filepath
                    do shell script command
                end try
                tell application "System Events"
                    delay 1
                    keystroke "Program Run On" & starts
                    keystroke return
                    keystroke "Volume Changed:" & which
                    keystroke return
                    if initial < 10 then
                        keystroke "Duration:0" & initial & " Minutes"
                        keystroke return
                        keystroke "Program Started:" & starts
                        keystroke return
                        keystroke "Program Ended:" & (current date)
                        keystroke return
                        delay 1
                        keystroke return
                        keystroke "s" using command down
                        delay 5
                        sleep
                        else
                        keystroke "Duration:" & initial & " Minutes"
                        keystroke return
                        keystroke "Program Started:" & starts
                        keystroke return
                        keystroke "Program Ended:" & (current date)
                        keystroke return
                        delay 1
                        keystroke return
                        keystroke "s" using command down
                        delay 3
                        keystroke "q"using command down
                        delay 1
                        sleep
                    end if
                end tell
                else
                display dialog "Make Sure All Other Applicatons Besides iTunes Are Not Active/Have Been Quit."
                display dialog "Set Timer in Minutes" default answer "60" default button 2
                set initial to the text returned of the result
                set time2 to initial * 60
                set time1 to time2 / 5
                set display to time1 / 60
                if display ≤ 12 then
                    display dialog "Volume Will Be Decreased By 10,This Will Be Done With " & display & " Minute Intervals." buttons ("Begin") default button 1
                    set volume of 100
                    delay time1
                    set volume of 90
                    delay time1
                    set volume of 80
                    delay time1
                    set volume of 70
                    delay time1
                    set volume of 60
                    delay time1
                    set volume of 50
                    delay time1
                    set volume of 40
                    delay time1
                    set volume of 30
                    delay time1
                    set volume of 20
                    delay time1
                    set volume of 10
                    delay time1
                    set volume of 0
                    delay 1
                    set volume of 100
                    set filepath to POSIX path of "/Users/"&userName&"/Desktop/MultiTasker.app/Contents/Resources/Lower Volume Results.RTF"
                    try
                        set command to "open " & quoted form of filepath
                        do shell script command
                    end try
                    tell application "System Events"
                        delay 1
                        keystroke "Program Run On:" & starts
                        keystroke return
                        keystroke "Volume Changed:" & which
                        keystroke return
                        if initial < 10 then
                            keystroke "Duration:0" & initial & " Minutes"
                            keystroke return
                            keystroke "Program Started:" & starts
                            keystroke return
                            keystroke "Program Ended:" & (current date)
                            keystroke return
                            delay 1
                            keystroke return
                            keystroke "s" using command down
                            delay 5
                            shut down
                            else
                            keystroke "Duration:" & initial & " Minutes"
                            keystroke return
                            keystroke "Program Started:" & starts & " 
                            Program Ended:" & (current date)
                            keystroke return
                            keystroke "Program Ended:" & (current date)
                            keystroke return
                            delay 1
                            keystroke return
                            keystroke "s" using command down
                            delay 3
                            keystroke "q"using command down
                            delay 1
                            shut down
                        end if
                    end tell
                end if
            end if
        end if
               end iTunesVolume_
    on DesktopCleanup_(sender)
        display dialog "Sort By" with title "Sort" buttons {"Name", "Kind"} default button 2
        if the button returned of the result is "Kind" then
            tell application "Finder"
                activate
                select window of desktop
                clean up window of desktop by kind
                delay 2
                display dialog "Clean Up Complete" with title "Complete" buttons ("Okay") default button 1
            end tell
            else
            tell application "Finder"
                activate
                select window of desktop
                clean up window of desktop by name
                delay 2
                display dialog "Clean Up Complete" with title "Complete" buttons ("Okay") default button 1
                
            end tell
        end if
        end DesktopCleanup_
    on Spambot_(sender)
        with timeout of 180 seconds
        display dialog "How Many Times?" default answer "10" buttons {"Cancel", "Ok"} default button 2
        set asdf to the text returned of the result
        try
            set asdf to (asdf as number) --Force Number
            on error
            display dialog "Not A Number" buttons ("Cancel")
            error
        end try
        ---------------------------------------------------------------------------------
        display dialog "What should I type?" default answer "" buttons ("Ok") default button 1
        set specific to the text returned of the result
        display dialog "Interval Between Messages:" default answer ".05" buttons {"Cancel", "Ok"} default button 2
        set int to the text returned of the result
        display dialog "Press 'Ok' When Ready To Type" with title "Confirm" buttons {"Cancel", "Ok"} default button 2
        tell application "System Events"
            delay 5
            keystroke "Spambot Activated"
            repeat asdf times
                delay int
                keystroke return
                keystroke specific
            end repeat
            keystroke return
            keystroke "Spambot Deactivated,Courtesy of ry141"
            keystroke return
        end tell
    end timeout
        end Spambot_
    on appquit_(sender)
        tell application "System Events"
            keystroke "q" using command down
            end tell
        end appquit_
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
	
    
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script