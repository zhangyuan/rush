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

@interface ShowChecklistTableViewController : UITableViewController <ChecklistItemTableViewCellDelegate>
@property(nonatomic, strong) RSChecklist* checklist;

@end
