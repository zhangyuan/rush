//
//  RSChecklist.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "RSChecklist.h"
#import "RSChecklistItem.h"

@implementation RSChecklist

-(id) init {
    if (self = [super init]) {
        self.items = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id) initWithTemplate:(RSTemplate*) checklistItemplate {
    if (self = [self init]) {
        self.title = checklistItemplate.title;
        for (RSTemplateItem* item in checklistItemplate.items) {
            RSChecklistItem* checklistItem = [[RSChecklistItem alloc] init];
            checklistItem.title = item.title;
            
            [self.items addObject:checklistItem];
        }
    }
    return self;
}

@end
