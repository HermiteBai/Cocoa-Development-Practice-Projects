//
//  SliderControl.h
//  Binding Slider
//
//  Created by HermiteBai on 12/20/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface SliderControl : NSObject

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (readwrite, assign) int fido;

- (IBAction)change:(id)sender;
- (IBAction)edit:(id)sender;

@end
