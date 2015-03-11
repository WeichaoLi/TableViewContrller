//
//  LWCListDataSource.m
//  TableViewContrller
//
//  Created by 李伟超 on 15/3/3.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "LWCListDataSource.h"

@implementation LWCListDataSource

- (id)initWithItems:(NSArray *)items {
    self = [super init];
    if (self) {
        _items = [items mutableCopy];
    }
    return self;
}

- (void)dealloc {
    _items = nil;
    [_items release];
    [super dealloc];
}

+ (LWCListDataSource *)dataSourceWithObjects:(id)object,... {
    NSMutableArray *items = [NSMutableArray array];
    va_list ap;
    va_start(ap, object);
    while (object) {
        [items addObject:object];
        object = va_arg(ap, id);
    }
    va_end(ap);
    
    return [[[self alloc] initWithItems:items] autorelease];
}

+ (LWCListDataSource *)dataSourceWithItems:(NSMutableArray *)items {
    return [[[self alloc] initWithItems:items] autorelease];
}

#pragma -
#pragma mark - LWCTableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _items.count;
}

- (NSIndexPath *)tableView:(UITableView *)tableView indexPathForObject:(id)object {
    NSUInteger index = [_items indexOfObject:object];
    
    if (index != NSNotFound) {
        return [NSIndexPath indexPathForRow:index inSection:0];
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView cell:(UITableViewCell *)cell willAppearAtIndexPath:(NSIndexPath *)indexPath {
    cell.textLabel.text = [_items objectAtIndex:indexPath.row];
}

- (id)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < _items.count) {
        return [_items objectAtIndex:indexPath.row];
    }
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return nil;
}

#pragma -
#pragma mark - Public

- (NSMutableArray *)items {
    if (!_items) {
        _items = [[NSMutableArray alloc] init];
    }
    return _items;
}

@end
