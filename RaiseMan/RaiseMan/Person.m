//
//  Person.m
//  RaiseMan
//
//  Created by HermiteBai on 12/20/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize expectedRaise;

-(id)init {
    self = [super init];
    if (self) {
        name = @"new Person";
        expectedRaise = 0.05;
    }
    return self;
}

@end
