//
//  SliderControl.m
//  Binding Slider
//
//  Created by HermiteBai on 12/20/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "SliderControl.h"

@implementation SliderControl

@synthesize textField = _textField;
@synthesize slider = _slider;
@synthesize fido;

- (IBAction)change:(id)sender {
    [_textField setIntValue:fido];
    NSLog(@"Value changed to %d", fido);
}

- (IBAction)edit:(id)sender {
    int value = [_textField intValue];
    [_slider setIntValue:value];
}

-(void)awakeFromNib {
    int value = [_slider intValue];
    [_textField setIntValue:value];
}

-(id)init {
    self = [super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:[_slider intValue]] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fido = %d", [n intValue]);
    }
    return self;
}


@end
