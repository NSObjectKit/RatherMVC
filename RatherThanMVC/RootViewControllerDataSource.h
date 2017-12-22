//
//  RootViewControllerDataSource.h
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//


#import "UserModel.h"

//Data CURD
@protocol RootViewControllerDataSource <NSObject>

- (void)requestData;

- (void)removeUserAtIndex:(NSInteger)index;

@end


@interface RootViewControllerDataSourceImp : NSObject <RootViewControllerDataSource>

@property (nonatomic, strong) NSMutableArray *dataList;


@end
