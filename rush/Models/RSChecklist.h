//
//  RSChecklist.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef RS_CHECKLIST_H
#define RS_CHECKLIST_H

#import "RSTemplate.h"
#import "RSChecklistItem.h"

@interface RSChecklist : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, strong) NSMutableArray* items;

-(id) initWithTemplate:(RSTemplate*) checklistItemplate;

@end

#endif
