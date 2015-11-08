//
//  ShowChecklistTableViewController.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "ShowChecklistTableViewController.h"
#import "RSChecklistItem.h"

@implementation ShowChecklistTableViewController

NSString* checklistItemTableViewCellIdentifier = @"checklistItemIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.checklist.title;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier: checklistItemTableViewCellIdentifier];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.checklist.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:checklistItemTableViewCellIdentifier forIndexPath:indexPath];
    
    RSChecklistItem* item = [self.checklist.items objectAtIndex:indexPath.row];
    cell.textLabel.text = item.title;
    
    return cell;
}


@end
