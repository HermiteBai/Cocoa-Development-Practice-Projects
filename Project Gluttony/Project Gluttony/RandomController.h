//
//  RandomController.h
//  Random
//
//  Created by HermiteBai on 12/17/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
    IBOutlet NSTextField *element;
    IBOutlet NSTextField *counter;
    NSMutableArray *options;

}

-(IBAction)seed:(id)sender;

-(IBAction)generate:(id)sender;

-(IBAction)add:(id)sender;

-(IBAction)clear:(id)sender;

@end
