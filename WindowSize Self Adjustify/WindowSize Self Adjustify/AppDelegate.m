//
//  AppDelegate.m
//  WindowSize Self Adjustify
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize {
    
    NSSize size = [[_window contentView]frame].size;
    return NSMakeSize(size.width, size.width*2);
}

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"inited");
        _window = [[NSWindow alloc]init];
        [_window setDelegate:self];
    }
    return self;
}

@end
