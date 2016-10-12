--
--  AppDelegate.applescript
--  ASOC MenuBar
--
--  Created by uchcode.
--  Copyright © 2016 uchcode. All rights reserved.
--

script AppDelegate
    property parent : class "NSObject"
    property NSStatusBar : class "NSStatusBar"
    
    -- IBOutlets
    
    property theWindow : missing value
    property theStatusMenu : missing value
    
    -- IBActions
    
    on clickMe:sender
        activate
        display alert "hello (again)"
    end

    on greet:sender
        activate
        display alert "hello (again)"
    end

    on |preferences|:sender
        activate
        tell theWindow to makeKeyAndOrderFront_(me)
    end
    
    -- Properties of me
    
    property theStatusItem : missing value
    
    -- NSMenuDelegate methods
    
    on menuWillOpen:notification
        -- Insert code here when status menu will open
    end
    
    on menuDidClose:notification
        -- Insert code here when status menu closed
    end
    
    -- NSApplicationDelegate methods
    
    on applicationWillFinishLaunching:notification
        -- Insert code here to initialize your application before any files are opened
    end
    
    on applicationDidFinishLaunching:notification
        set l to current application's NSVariableStatusItemLength
        set theStatusItem to NSStatusBar's systemStatusBar's statusItemWithLength_(l)
        tell theStatusItem to setTitle_("🐱")
        tell theStatusItem to setMenu_(theStatusMenu)
        tell theStatusMenu to setDelegate_(me)
        tell theWindow to |center|()
    end
    
    on applicationWillTerminate:notification
        -- Insert code here to tear down your application
    end
    
    on applicationShouldTerminate:sender
        -- Insert code here to do any housekeeping before your application quits 
        return current application's NSTerminateNow
    end
	
    on applicationShouldTerminateAfterLastWindowClosed:sender
        -- If the return value is true, the application is quit when user close the last window
        return false
    end
    
    on applicationShouldHandleReopen:sender hasVisibleWindows:flag
        -- Insert code here to reopen your application
        if flag then
            return false
        end
        return true
    end
    
end
