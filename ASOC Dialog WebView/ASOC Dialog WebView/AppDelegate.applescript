--
--  AppDelegate.applescript
--  ASOC Dialog WebView
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
        quit
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
        
        set u to NSURL's alloc's initWithString_(theAddress)
        set r to NSURLRequest's alloc's initWithURL_(u)
        tell theWebView to loadRequest_(r)
        
        tell the contentView of theWindow to addSubview_(theWebView)
        
        tell theWindow to setLevel_(current application's NSFloatingWindowLevel)
        tell theWindow to |center|()
        activate
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
