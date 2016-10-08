--
--  AppDelegate.applescript
--  __projectname__
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
        activate
        display alert "OK"
    end
    
    on cancel:sender
        activate
        display alert "Cancel"
    end
    
    -- Delegate methods
    
    on applicationShouldHandleReopen:sender hasVisibleWindows:flag
        display alert "Reopen"
        return true
    end
    
    on applicationWillFinishLaunching:notification
        -- Insert code here to initialize your application before any files are opened 
    end
    
    on applicationDidFinishLaunching:notification
        display alert "Launch"
    end
    
    on applicationWillTerminate:sender
        -- Insert code here to tear down your application
    end
    
    on applicationShouldTerminate:sender
        -- Insert code here to do any housekeeping before your application quits 
        return current application's NSTerminateNow
    end
    
end
