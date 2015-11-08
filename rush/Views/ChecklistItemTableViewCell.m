//
//  ChecklistItemTableViewCell.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "ChecklistItemTableViewCell.h"

@implementation ChecklistItemTableViewCell

- (void)animationDidStopForCheckBox:(BEMCheckBox *)checkBox{
    if (self.delegate) {
        [self.delegate didCheck:self withStatus:checkBox.on];
    }
}

@end
