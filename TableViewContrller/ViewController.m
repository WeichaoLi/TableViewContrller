//
//  ViewController.m
//  TableViewContrller
//
//  Created by 李伟超 on 15/2/9.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *items = @[@"1⃣️",@"2⃣️",@"3⃣️",@"4⃣️",@"🈚️",@"6⃣️",@"7⃣️",@"8⃣️",@"9⃣️",@"🔟"];
    _myTableView = [[LWCTableView alloc] initWithFrame:self.view.bounds WithItems:items];
    [self.view addSubview:_myTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
