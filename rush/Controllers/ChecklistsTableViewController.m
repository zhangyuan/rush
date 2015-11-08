//
//  ChecklistsTableViewController.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "ChecklistsTableViewController.h"
#import "ChooseTemplateTableViewController.h"
#import "ShowChecklistTableViewController.h"

@interface ChecklistsTableViewController ()
@property(nonatomic, strong) NSMutableArray* checklists;
@end

@implementation ChecklistsTableViewController

NSString* checklistCellIdentifier = @"checklistItem";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.checklists = [[NSMutableArray alloc] init];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:checklistCellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) insertChecklist:(RSChecklist*) checklist {
    [self.checklists insertObject:checklist atIndex:0];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.checklists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:checklistCellIdentifier forIndexPath:indexPath];
    
    RSChecklist* checklist =  [self.checklists objectAtIndex:indexPath.row];
    cell.textLabel.text = checklist.title;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showChecklist" sender:self];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"choseTemplate"]) {
        UINavigationController* navigationController = segue.destinationViewController;
        ChooseTemplateTableViewController* controller = (ChooseTemplateTableViewController*)navigationController.topViewController;
        controller.chekclistDataSource = self;
    } else if ([segue.identifier isEqualToString:@"showChecklist"]){
        ShowChecklistTableViewController* controller = segue.destinationViewController;
        controller.checklist = [self.checklists objectAtIndex: [self.tableView.indexPathForSelectedRow row]];
    }
}


@end
