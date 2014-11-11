//
//  main.m
//  Lower Volume
//
//  Created by Ryan on 11/9/14.
//  Copyright (c) 2014 Ry141. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
