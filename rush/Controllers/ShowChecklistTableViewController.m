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
//    cell.checkBox.on = item.status;
    
    [cell.checkBox setOn:item.status animated:YES];
    
    cell.checkBox.on = item.status;
    
    [cell.checkBox reload];
    
    cell.checkBox.delegate = cell;
    cell.delegate = self;
    return cell;
}

-(void) didCheck:(ChecklistItemTableViewCell*) cell withStatus:(BOOL) value {
    NSIndexPath* indexPath = [self.tableView indexPathForCell:cell];
    RSChecklistItem* item = [self.checklist.items objectAtIndex:indexPath.row];
    
    item.status = value;
    
    if (indexPath.row == (self.checklist.items.count - 1)) {
        
    }
    
    [self.tableView beginUpdates];
    [self.checklist.items removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation: UITableViewRowAnimationFade];
        
    [self.tableView endUpdates];
        
    
    unsigned long insertIndex = 0;
    
    if (value == YES) {
        insertIndex = self.checklist.items.count;
    }
    
    
    [self.tableView beginUpdates];
        
    [self.checklist.items insertObject:item atIndex:insertIndex];
    NSIndexPath* newIndexPath = [NSIndexPath indexPathForRow: insertIndex inSection: 0];
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject: newIndexPath] withRowAnimation:UITableViewRowAnimationBottom];
    [self.tableView endUpdates];

}

@end
