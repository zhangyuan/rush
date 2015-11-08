//
//  ShowTemplateTableViewController.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistsTableViewController.h"
#import "ChecklistDataSource.h"
#import "RSTemplate.h"


@interface ShowTemplateTableViewController : UITableViewController
- (IBAction)save:(id)sender;

@property (nonatomic, strong) RSTemplate* template;

@property (strong) id <ChecklistDataSource> checklistDataSource;

@end
