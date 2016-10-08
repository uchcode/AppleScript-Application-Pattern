//
//  main.m
//  ASOC Basic
//
//  Created by uchcode on 2016/10/09.
//  Copyright © 2016 uchcode. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
