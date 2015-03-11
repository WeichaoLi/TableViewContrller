//
//  LWCTableViewDataSource.h
//  TableViewContrller
//
//  Created by 李伟超 on 15/2/10.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol LWCTableViewDataSource <UITableViewDataSource>

@required

- (id)tableView:(UITableView*)tableView objectForRowAtIndexPath:(NSIndexPath*)indexPath;

- (Class)tableView:(UITableView*)tableView cellClassForObject:(id)object;

- (void)tableView:(UITableView*)tableView cell:(UITableViewCell*)cell willAppearAtIndexPath:(NSIndexPath*)indexPath;

- (NSIndexPath*)tableView:(UITableView*)tableView indexPathForObject:(id)object;

@optional



@end

@interface LWCTableViewDataSource : NSObject<LWCTableViewDataSource>

//@property (nonatomic, assign) id<LWCTableViewDataSource> tableviewDataSource;

@end
