//
//  LLTableViewController.m
//  Scratch-linked-list
//
//  Created by Jason Koceja on 10/14/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import "LLTableViewController.h"
#import "LLLinkedList.h"

@interface LLTableViewController (){
    LLLinkedList *ourList;
}

@end

@implementation LLTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    ourList = [LLLinkedList listWithObject:@"Hello"];
    [ourList push:@"Goodbye"];
    [ourList push:@"Left"];
    [ourList push:@"Right"];
    [ourList push:@"Code Fellows"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [ourList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    
    cell.textLabel.text = [ourList objectAtIndex:indexPath.row];
    
    return cell;
}

@end
