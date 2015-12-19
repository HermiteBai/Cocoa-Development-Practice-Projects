//
//  AppDelegate.h
//  SpeakLine
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
    NSSpeechSynthesizer *_speechSynth;
}

//@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

-(IBAction)speakIt:(id)sender;
-(IBAction)stopIt:(id)sender;

@end

