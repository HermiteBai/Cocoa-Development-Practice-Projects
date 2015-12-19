//
//  AppDelegate.m
//  SpeakLine
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@interface SpeakLineAppDelegate ()

@end

@implementation SpeakLineAppDelegate

//@synthesize window = _window;

@synthesize textField = _textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(id)init
{
    self = [super init];
    if (self) {
        NSLog(@"Initialized");
        _speechSynth = [[NSSpeechSynthesizer alloc]initWithVoice: nil];
    }
    return self;
}

-(IBAction)speakIt:(id)sender {
    NSString *string = [_textField stringValue];
    if ([string length] == 0) {
        NSLog(@"zero-length");
        return;
    }
    [_speechSynth startSpeakingString:string];
    NSLog(@"Started speaking");
}

-(IBAction)stopIt:(id)sender {
    NSLog(@"Stopped");
    [_speechSynth stopSpeaking];
}

-(void)awakeFromNib {
    [_textField setStringValue:@"Default string"];
}

@end
