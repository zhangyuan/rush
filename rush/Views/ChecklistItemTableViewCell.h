//
//  ChecklistItemTableViewCell.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BEMCheckBox.h"

@class ChecklistItemTableViewCell;

@protocol ChecklistItemTableViewCellDelegate
-(void) didCheck:(ChecklistItemTableViewCell*) cell withStatus:(BOOL) value;
@end


@interface ChecklistItemTableViewCell : UITableViewCell <BEMCheckBoxDelegate>
@property (strong, nonatomic) IBOutlet BEMCheckBox *checkBox;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@property (strong) id <ChecklistItemTableViewCellDelegate> delegate;

@end
