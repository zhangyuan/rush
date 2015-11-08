//
//  ShowChecklistTableViewController.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSChecklist.h"
#import "ChecklistItemTableViewCell.h"
#import "ChecklistInputTableViewCell.h"

@interface ShowChecklistTableViewController : UITableViewController <ChecklistItemTableViewCellDelegate, UITextFieldDelegate>
@property(nonatomic, strong) RSChecklist* checklist;
@property(nonatomic, strong) RSChecklistItem* editingItem;

@property(nonatomic, strong) UITextField* textField;

- (IBAction)newItemTextFieldDidChanged:(UITextField*)sender;

@end
