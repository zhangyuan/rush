//
//  RSTemplate.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef RS_TEMPLATE_H
#define RS_TEMPLATE_H

#import "RSTemplateItem.h"

@interface RSTemplate : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, strong) NSMutableArray* items;

+(NSArray*) defaultTemplates;

@end

#endif
