//
//  LWCTableViewController.m
//  TableViewContrller
//
//  Created by 李伟超 on 15/2/10.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "LWCTableViewController.h"

@implementation LWCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[LWCTableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
}

@end
