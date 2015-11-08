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
    template.title = @"Travel";
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Travel item 1"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Travel item 2"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Travel item 3"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Travel item 4"]];
    [_defaultTemplates addObject: template];
    
    template = [[RSTemplate alloc] init];
    template.title = @"Shopping";
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Shopping item 1"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Shopping item 2"]];
    [template addItem: [[RSTemplateItem alloc] initWithTitle:@"Shopping item 3"]];
    [_defaultTemplates addObject: template];
    
    return _defaultTemplates;
}

-(void) addItem:(RSTemplateItem*) item {
    [self.items addObject:item];
}

@end
