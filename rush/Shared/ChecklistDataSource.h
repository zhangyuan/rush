//
//  ChecklistDataSource.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#ifndef ChecklistDataSource_h
#define ChecklistDataSource_h

#import "RSChecklist.h"

@protocol ChecklistDataSource
-(void) insertChecklist:(RSChecklist*) checklist;
@end

#endif /* ChecklistDataSource_h */
