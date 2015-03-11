//
//  LWCTableView.m
//  TableViewContrller
//
//  Created by 李伟超 on 15/3/2.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "LWCTableView.h"

@implementation LWCTableView

- (id)initWithFrame:(CGRect)frame WithItems:(NSArray *)items {
    self = [super initWithFrame:frame style:UITableViewStylePlain];
    if (self) {
        _listDataSource = [[LWCListDataSource alloc] initWithItems:[items mutableCopy]];
        self.dataSource = _listDataSource;
        _listDelegate = [[LWCTableViewDelegate alloc] init];
        self.delegate = _listDelegate;
        [self initialize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void) initialize {
    self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    // Trick to hide UITableView Empty Cell Separator Lines (stuff below last nonempty cell)
    UIView *footer = [[UIView alloc] initWithFrame:CGRectZero];
    self.tableFooterView = footer;
}

@end
