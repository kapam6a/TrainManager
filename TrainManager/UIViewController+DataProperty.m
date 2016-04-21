//
//  UIViewController+DataProperty.m
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "UIViewController+DataProperty.h"
#import <objc/runtime.h>

static void *ViewControllerKey;

@implementation UIViewController (DataProperty)

- (id)dataProperty
{
    id data = objc_getAssociatedObject(self, &ViewControllerKey);
    return data;
}

-(void)setDataProperty:(id)data
{
    objc_setAssociatedObject(self, &ViewControllerKey, data, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
