//
//  LWCTableView.h
//  TableViewContrller
//
//  Created by 李伟超 on 15/3/2.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWCListDataSource.h"
#import "LWCTableViewDelegate.h"

@protocol TableViewDelegate <NSObject>

@optional

@end

@interface LWCTableView : UITableView

@property (nonatomic, retain) LWCListDataSource *listDataSource;
@property (nonatomic, retain) LWCTableViewDelegate *listDelegate;

- (id)initWithFrame:(CGRect)frame WithItems:(NSArray *)items;

@end
