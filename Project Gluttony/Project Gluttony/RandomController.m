//
//  RandomController.m
//  Random
//
//  Created by HermiteBai on 12/17/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

-(id)init {
    self = [super init];
    if (self) {
        //Nothing
    }
    return self;
}

-(void)dealloc {
    //[super dealloc];
}

-(IBAction)seed:(id)sender
{
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generator seeded."];
}

-(IBAction)generate:(id)sender
{
    if ([counter intValue] == 0) {
        NSLog(@"Unable to generate due to lack of enough option.");
        [textField setStringValue:@"Unable to generate due to lack of enough option."];
        return;
    }
    int generated;
    generated = (int)(random() % [counter intValue]);
    NSLog(@"generated = %d", generated);
    //[textField setIntValue:generated];
    [textField setStringValue:[options objectAtIndex:generated]];
}

-(IBAction)add:(id)sender
{
    if ([counter intValue] == 0) {
        options = [[NSMutableArray alloc]init];
    }
    NSString *addition = [[NSString alloc]initWithString:[element stringValue]];
    [options addObject:addition];
    [counter setIntValue:[counter intValue]+1];
    [element setStringValue:@""];
}

-(IBAction)clear:(id)sender
{
    [options removeAllObjects];
    [counter setIntValue:0];
    [textField setStringValue:@"Cleared"];
}


-(void)awakeFromNib
{
    NSDate *now;
    now = [NSDate date];
    [textField setObjectValue:now];
}

@end
