//
//  RSTemplateItem.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "RSTemplateItem.h"

@implementation RSTemplateItem

-(id) initWithTitle:(NSString*) title {
    if (self = [super init]) {
        self.title = title;
    }
    return self;
}
@end
