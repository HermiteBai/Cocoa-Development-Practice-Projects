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
@synthesize speak = _speak;
@synthesize stop = _stop;
@synthesize tableView = _tableView;

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
        [_speechSynth setDelegate:self];
        [_stop setEnabled:NO];
        _voices = [NSSpeechSynthesizer availableVoices];
    }
    return self;
}

-(IBAction)speakIt:(id)sender {
    [_speak setEnabled:NO];
    [_stop setEnabled:YES];
    NSString *string = [_textField stringValue];
    if ([string length] == 0) {
        NSLog(@"zero-length");
        return;
    }
    [_speechSynth startSpeakingString:string];
    [_tableView setEnabled:NO];
    NSLog(@"Started speaking");
}

-(IBAction)stopIt:(id)sender {
    NSLog(@"Stopped");
    [_speechSynth stopSpeaking];
    [_tableView setEnabled:YES];
}

-(void)awakeFromNib {
    [_textField setStringValue:@"Default string"];
    NSString *defaultVoice = [NSSpeechSynthesizer defaultVoice];
    NSInteger defaultRow = [_voices indexOfObject:defaultVoice];
    NSIndexSet *indices = [NSIndexSet indexSetWithIndex:defaultRow];
    [_tableView selectRowIndexes:indices byExtendingSelection:NO];
    [_tableView scrollRowToVisible:defaultRow];
}

-(void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking {
    NSLog(@"finished speaking = %d", finishedSpeaking);
    [_speak setEnabled:YES];
    [_stop setEnabled:NO];
    [_tableView setEnabled:YES];
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return (NSInteger)[_voices count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *v = [_voices objectAtIndex:row];
    NSDictionary *dict = [NSSpeechSynthesizer attributesForVoice:v];
    return [dict objectForKey:NSVoiceName];
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification {
    NSInteger row = [_tableView selectedRow];
    if (row == -1) {
        return;
    }
    NSString *selectedVoice = [_voices objectAtIndex:row];
    [_speechSynth setVoice:selectedVoice];
    NSLog(@"new voice = %@",selectedVoice);
}


@end
