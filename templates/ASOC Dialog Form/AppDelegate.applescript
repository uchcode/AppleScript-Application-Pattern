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
        display alert "OK"
        current application's NSApp's terminate_(me)
    end
    
    -- Delegate methods
    
    on applicationWillFinishLaunching:notification
        current application's NSApp's runModalForWindow:theWindow
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
    
end
