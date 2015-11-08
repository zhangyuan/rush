//
//  ShowChecklistTableViewController.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "ShowChecklistTableViewController.h"
#import "RSChecklistItem.h"
#import "ChecklistItemTableViewCell.h"

@implementation ShowChecklistTableViewController

NSString* checklistItemTableViewCellIdentifier = @"checklistItemIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.checklist.title;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.checklist.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChecklistItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:checklistItemTableViewCellIdentifier forIndexPath:indexPath];
    
    RSChecklistItem* item = [self.checklist.items objectAtIndex:indexPath.row];
    cell.titleLabel.text = item.title;
    
    return cell;
}


@end
