//
//  UIView+Responsder.m
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//

#import "UIView+Responsder.h"
#import <objc/runtime.h>

@implementation UIView (Responsder)

- (ViewController *)viewController {
    id vc = objc_getAssociatedObject(self, @selector(viewController));
    if (vc) return vc;
    UIResponder *responder = self.nextResponder;
    while (!([responder isKindOfClass:[ViewController class]] || responder == nil)) {
        responder = responder.nextResponder;
    }
    if ([responder isKindOfClass:[ViewController class]]) {
        objc_setAssociatedObject(self, @selector(viewController), responder, OBJC_ASSOCIATION_ASSIGN);
        return (ViewController *)responder;
    }
    return nil;
}

@end
