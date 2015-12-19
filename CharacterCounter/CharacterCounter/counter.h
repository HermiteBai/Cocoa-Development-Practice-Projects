//
//  counter.h
//  CharacterCounter
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface counter : NSObject

@property (weak) IBOutlet NSTextField *textField;
@property (strong) IBOutlet NSTextField *display;

- (IBAction)count:(id)sender;
- (IBAction)clear:(id)sender;

@end
