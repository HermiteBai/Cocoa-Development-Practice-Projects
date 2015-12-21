//
//  Document.h
//  RaiseMan
//
//  Created by HermiteBai on 12/20/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument

@property NSMutableArray *employees;

-(void)setEmployees:(NSMutableArray *)arr;

@end

