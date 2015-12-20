//
//  AppDelegate.h
//  SpeakLine
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate, NSSpeechSynthesizerDelegate, NSTableViewDataSource, NSTableViewDelegate> {
    NSWindow *_window;
    NSSpeechSynthesizer *_speechSynth;
    NSArray *_voices;
}

//@property (strong) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSTextField *textField;
@property (strong) IBOutlet NSButton *speak;
@property (strong) IBOutlet NSButton *stop;
@property (strong) IBOutlet NSTableView *tableView;

-(IBAction)speakIt:(id)sender;
-(IBAction)stopIt:(id)sender;

@end

