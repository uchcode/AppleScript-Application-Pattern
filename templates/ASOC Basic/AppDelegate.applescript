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
    
    
    
    -- Delegate methods
    
    on applicationWillFinishLaunching:notification
        -- Insert code here to initialize your application before any files are opened 
    end
    
    on applicationDidFinishLaunching:notification
        -- Insert code here to initialize your application
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
        tell theWindow to makeKeyAndOrderFront_(me)
        return true
    end
    
end
