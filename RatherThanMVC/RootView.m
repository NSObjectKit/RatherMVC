//
//  RootView.m
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//

#import "RootView.h"
#import "UIView+Responsder.h"
#import "RooterViewControllerBussnessHandler.h"

@interface RootView () <UITableViewDelegate>


@end

@implementation RootView


- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        [self addTableView];
        
    }
    return self;
}

- (void)addTableView {
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.bounds];
    tableView.delegate = self;
    [self addSubview:tableView];
    self.tableView = tableView;
    
}

- (void)observeValueForKeyPath:(nullable NSString *)keyPath ofObject:(nullable id)object change:(nullable NSDictionary<NSKeyValueChangeKey, id> *)change context:(nullable void *)context {
    if ([keyPath isEqualToString:@"dataList"]) {
        
        [self.tableView reloadData];
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [(id <RootViewControllerBussness>)self.viewController.bussnessHandler didSelectRowAtIndex:indexPath];
//    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
  
    
}


@end
