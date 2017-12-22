//
//  RootViewControllerDataSource.m
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//

#import "RootViewControllerDataSource.h"
#import <UIKit/UIKit.h>

@interface RootViewControllerDataSourceImp ()


@end

@implementation RootViewControllerDataSourceImp

- (instancetype)init {
    if (self = [super init]) {
        [self requestData];
    }
    return self;
}

- (void)requestData {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    
        NSMutableArray *array = [NSMutableArray array];
        NSArray *nameArray = @[@"xiaoming", @"xiaogang", @"xiaohhong", @"Mike", @"Jone", @"Steve"];
        for (int i = 0; i < nameArray.count; i++) {
            UserModel *model = [UserModel new];
            model.name = [NSString stringWithFormat:@"%@", nameArray[i]];
            [array addObject:model];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            self.dataList = array;
            NSLog(@"data load");
        });

    });
    
}

- (void)removeUserAtIndex:(NSInteger)index {
    UserModel *model = [UserModel new];
    model.name = @"add";
//    [self.dataList removeObjectAtIndex:index];
    [[self mutableArrayValueForKey:@"dataList"] insertObject:model atIndex:index];
}




@end


