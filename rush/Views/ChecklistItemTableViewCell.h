//
//  ChecklistItemTableViewCell.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BEMCheckBox.h"

@interface ChecklistItemTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet BEMCheckBox *checkBox;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end
