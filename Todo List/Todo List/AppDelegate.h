//
//  AppDelegate.h
//  Todo List
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate> {
    NSMutableArray *list;
}

@property (strong) IBOutlet NSTextField *textField;
@property (strong) IBOutlet NSTableView *tableView;


- (IBAction)add:(id)sender;
- (IBAction)clear:(id)sender;

@end

