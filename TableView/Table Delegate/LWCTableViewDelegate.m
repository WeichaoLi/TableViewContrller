//
//  LWCTableViewDelegate.m
//  TableViewContrller
//
//  Created by 李伟超 on 15/3/2.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "LWCTableViewDelegate.h"

@implementation LWCTableViewDelegate

#pragma mark - 
#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    id<LWCTableViewDataSource> datasource = (id<LWCTableViewDataSource>)tableView.dataSource;
    id object = [datasource tableView:tableView objectForRowAtIndexPath:indexPath];
    NSLog(@"%@",object);
}

@end
