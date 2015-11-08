//
//  RSTemplateItem.h
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef RS_TEMPLATE_ITEM_H
#define RS_TEMPLATE_ITEM_H
@interface RSTemplateItem : NSObject

-(id) initWithTitle:(NSString*) title;

@property (nonatomic, copy) NSString* title;

@end
#endif