--
--  AppDelegate.applescript
--  __projectname___
--
--  Created by uchcode.
--  Copyright © 2016 uchcode. All rights reserved.
--

script AppDelegate
    property parent : class "NSObject"
    
    -- IBOutlets
    
    property theWindow : missing value
    
    -- IBActions
    
    on ok:sender
        current application's NSApp's terminate_(me)
    end
    
    -- Delegate methods
    
    on applicationWillFinishLaunching:notification
        -- Insert code here to initialize your application before any files are opened 
    end
    
    on applicationDidFinishLaunching:notification
        current application's NSApp's activateIgnoringOtherApps_(true)
        current application's NSApp's runModalForWindow:theWindow
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
