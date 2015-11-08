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
#import "ChecklistInputTableViewCell.h"


@implementation ShowChecklistTableViewController

NSString* checklistItemTableViewCellIdentifier = @"checklistItemIdentifier";
NSString* ChecklistInputTableViewCellIdentifier = @"checklistInputIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.checklist.title;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapOnTableView:)];
    [self.view addGestureRecognizer:tap];
}

-(void) didTapOnTableView:(UIGestureRecognizer*) recognizer {
    [self.textField endEditing:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return self.checklist.items.count;
    } else {
        return 1;
    }

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        ChecklistItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:checklistItemTableViewCellIdentifier forIndexPath:indexPath];
        
        RSChecklistItem* item = [self.checklist.items objectAtIndex:indexPath.row];
        cell.titleLabel.text = item.title;
        
        cell.checkBox.on = item.status;
        
        [cell.checkBox reload];
        
        cell.checkBox.delegate = cell;
        cell.delegate = self;
        return cell;
    } else {
        ChecklistInputTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:ChecklistInputTableViewCellIdentifier forIndexPath:indexPath];
        cell.textField.delegate = self;
        self.textField = cell.textField;
        return cell;
    }
}

-(void) didCheck:(ChecklistItemTableViewCell*) cell withStatus:(BOOL) value {
    NSIndexPath* indexPath = [self.tableView indexPathForCell:cell];
    RSChecklistItem* item = [self.checklist.items objectAtIndex:indexPath.row];
    
    item.status = value;
    
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField endEditing:YES];
    return TRUE;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    RSChecklistItem* item = [[RSChecklistItem alloc] init];
    item.title = self.textField.text;
    self.textField.text = @"";
    
    [self.tableView beginUpdates];
    NSIndexPath* newIndexPath = [NSIndexPath indexPathForRow: self.checklist.items.count inSection: 0];
    [self.checklist.items addObject:item];

    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationTop];
    [self.tableView endUpdates];
}
@end
