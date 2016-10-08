--
--  AppDelegate.applescript
--  __project_name
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
    
    -- Delegate methods
    
    on applicationWillFinishLaunching:notification
        set l to current application's NSVariableStatusItemLength
        set theStatusItem to NSStatusBar's systemStatusBar's statusItemWithLength_(l)
        tell theStatusItem to setMenu_(theStatusMenu)
        tell theStatusItem to setTitle_("🐱")
        tell theWindow to |center|()
    end
    
    on applicationDidFinishLaunching:notification
        -- Insert code here to initialize your application
    end
    
    on applicationWillTerminate:sender
        -- Insert code here to tear down your application
    end
    
    on applicationShouldTerminate:sender
        -- Insert code here to do any housekeeping before your application quits 
        return current application's NSTerminateNow
    end
    
end
