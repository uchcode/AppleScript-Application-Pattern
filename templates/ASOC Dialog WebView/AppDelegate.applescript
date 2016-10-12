--
--  AppDelegate.applescript
--  __projectname__
--
--  Created by uchcode.
--  Copyright © 2016 uchcode. All rights reserved.
--

script AppDelegate
    property parent : class "NSObject"
    property NSURL        : class "NSURL"
    property NSURLRequest : class "NSURLRequest"
    property WKWebView    : class "WKWebView"
    property WKWebViewConfiguration : class "WKWebViewConfiguration"
    
    -- IBOutlets
    
    property theWindow : missing value
    
    -- IBActions
    
    on ok:sender
        current application's NSApp's terminate_(me)
    end
    
    -- Delegate methods
    
    on applicationWillFinishLaunching:notification
        
        set theAddress to "http://book.mynavi.jp/wd/widget/300x250.html"
        
        set z to current application's NSMakeRect(0, 0, 0, 0)
        set c to WKWebViewConfiguration's alloc's init()
        set theWebView to WKWebView's alloc's initWithFrame_configuration_(z, c)
        
        set s to theWindow's contentView's frame()'s |size|
        set w to width of s
        set h to height of s
        set f to current application's NSMakeRect(0, 64, w, h - 64)
        tell theWebView to setFrame_(f)
        
        set u to NSURL's URLWithString_(theAddress)
        set r to NSURLRequest's requestWithURL_(u)
        tell theWebView to loadRequest_(r)
        
        tell the contentView of theWindow to addSubview_(theWebView)
        
        current application's NSApp's activateIgnoringOtherApps_(true)
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
