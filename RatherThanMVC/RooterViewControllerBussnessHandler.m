//
//  RooterViewControllerBussnessHandler.m
//  RatherThanMVC
//
//  Created by Vanke on 2017/12/22.
//  Copyright © 2017年 Vanke. All rights reserved.
//

#import "RooterViewControllerBussnessHandler.h"
#import <UIKit/UIKit.h>

@interface RooterViewControllerBussnessHandler ()

@end

@implementation RooterViewControllerBussnessHandler


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSourceImp.dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    UserModel *model = self.dataSourceImp.dataList[indexPath.row];
    cell.textLabel.text = model.name;
    return cell;
    
}

- (void)didSelectRowAtIndex:(NSIndexPath *)indexPath {
    [self.dataSourceImp removeUserAtIndex:indexPath.row];
}

@end
