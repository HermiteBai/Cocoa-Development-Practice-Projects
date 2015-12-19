//
//  counter.m
//  CharacterCounter
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "counter.h"

@implementation counter

@synthesize textField = _textField;

@synthesize display = _display;

- (IBAction)count:(id)sender {
    NSString *string = [_textField stringValue];
    NSUInteger num = [string length];
    if (num == 1) {
        [_display setStringValue:@"Entered sentence has 1 character."];
    }
    else if (num == 0)
    {
        [_display setStringValue:@"Entered sentence has 0 character."];
    }
    else
    {
        NSString *content = [[NSString alloc]initWithFormat:@"Entered sentence has %lu characters.", num];
        [_display setStringValue:content];
    }
}

- (IBAction)clear:(id)sender {
    [_textField setStringValue:@""];
    [_display setStringValue:@""];
}

-(id)init {
    self = [super init];
    if (self) {
        NSLog(@"Initilized");
    }
    return self;
}
@end
