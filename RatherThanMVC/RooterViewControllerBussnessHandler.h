//
//  RooterViewControllerBussnessHandler.h
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//

#import "RootViewControllerDataSource.h"
#import <UIKit/UIKit.h>

@protocol RootViewControllerBussness <NSObject>

- (void)didSelectRowAtIndex:(NSIndexPath *)indexPath;


@end


@interface RooterViewControllerBussnessHandler : NSObject <RootViewControllerBussness, UITableViewDataSource>

@property (nonatomic, strong) RootViewControllerDataSourceImp *dataSourceImp;

@end
