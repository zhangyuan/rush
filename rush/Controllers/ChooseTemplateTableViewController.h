//
//  ChooseTemplateTableViewController.h
//  rush
//
//  Created by zhangyuan on 11/7/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistsTableViewController.h"
#import "ChecklistDataSource.h"

@interface ChooseTemplateTableViewController : UITableViewController

- (IBAction)cancel:(id)sender;

@property (strong) id <ChecklistDataSource> chekclistDataSource;

@end
