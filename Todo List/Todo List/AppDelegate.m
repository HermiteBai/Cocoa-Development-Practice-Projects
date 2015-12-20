//
//  AppDelegate.m
//  Todo List
//
//  Created by HermiteBai on 12/19/15.
//  Copyright © 2015 HermiteBai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize tableView = _tableView;
@synthesize textField = _textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)add:(id)sender {
    NSString *string = [[NSString alloc]initWithString:[_textField stringValue]];
    [list addObject:string];
    NSLog(@"Add %@", [_textField stringValue]);
    [_tableView reloadData];
    [_textField setStringValue:@""];
}

- (IBAction)clear:(id)sender {
    [list removeAllObjects];
    [_tableView reloadData];
    NSLog(@"List cleared.");
}

-(id)init {
    self = [super init];
    if (self) {
        NSLog(@"Initialized.");
        list = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return (NSInteger)[list count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *v = [list objectAtIndex:row];
    return v;
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification {
    NSInteger row = [_tableView selectedRow];
    if (row == -1) {
        return;
    }
    [list removeObjectAtIndex:(NSUInteger)row];
    NSLog(@"Removed");
    [_tableView reloadData];
}
@end
