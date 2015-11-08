//
//  RSChecklistItem.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef RS_CHECKLIST_ITEM_H
#define RS_CHECKLIST_ITEM_H

@interface RSChecklistItem : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic) BOOL status;

@end

#endif