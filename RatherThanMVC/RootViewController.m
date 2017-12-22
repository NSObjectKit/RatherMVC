//
//  RootViewController.m
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//

#import "RootViewController.h"

#import "RooterViewControllerBussnessHandler.h"
#import "RootViewControllerDataSource.h"
#import "RootView.h"

@interface RootViewController ()


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self congfig];
    [self bulidView];
}

- (void)bulidView {
    RootView *view = [[RootView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
    
    
    view.tableView.dataSource = (id <UITableViewDataSource>)self.bussnessHandler;
    [self.dataSourceImp addObserver:view forKeyPath:@"dataList" options:NSKeyValueObservingOptionNew context:nil];
     
}

- (void)congfig {
    
    RooterViewControllerBussnessHandler *bussnessHandler = [RooterViewControllerBussnessHandler new];
    self.bussnessHandler = bussnessHandler;
    self.dataSourceImp = [RootViewControllerDataSourceImp new];
    bussnessHandler.dataSourceImp = self.dataSourceImp;
    
}




@end
