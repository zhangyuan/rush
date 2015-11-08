//
//  RSTemplate.m
//  rush
//
//  Created by zhangyuan on 11/8/15.
//  Copyright © 2015 Next. All rights reserved.
//

#import "RSTemplate.h"
#import "RSTemplateItem.h"

@implementation RSTemplate

static NSMutableArray* _defaultTemplates = nil;

-(id) init {
    if (self = [super init]) {
        self.items = [[NSMutableArray alloc] init];
    }
    return self;
}

+(NSArray*) defaultTemplates {
    if (_defaultTemplates != nil) {
        return _defaultTemplates;
    }
    
    _defaultTemplates = [[NSMutableArray alloc] init];
    
    RSTemplate* template = [[RSTemplate alloc] init];
    template.title = @"日本旅游签证资料";
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"护照"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"2寸免冠彩照2张"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"单位在职证明"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"户口簿及本人身份证原件"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"资产证明"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"工作单位营业执照复印件"]];
    [_defaultTemplates addObject: template];
    
    template = [[RSTemplate alloc] init];
    template.title = @"出差物品";
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"现金"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"身份证"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"相机"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"雨伞"]];
    [_defaultTemplates addObject: template];
    
    return _defaultTemplates;
}

-(void) addItem:(RSTemplateItem*) item {
    [self.items addObject:item];
}

@end
