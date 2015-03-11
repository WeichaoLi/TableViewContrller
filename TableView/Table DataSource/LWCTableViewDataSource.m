//
//  LWCTableViewDataSource.m
//  TableViewContrller
//
//  Created by 李伟超 on 15/2/10.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "LWCTableViewDataSource.h"
#import "LWCTableViewCell.h"

@implementation LWCTableViewDataSource

#pragma -
#pragma mark - LWCTableViewDataSource

- (Class)tableView:(UITableView *)tableView cellClassForObject:(id)object {
    if ([object isKindOfClass:[LWCTableViewCell class]]) {
        return [LWCTableViewCell class];
    }
    
    return [UITableViewCell class];
}

- (id)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (void)tableView:(UITableView *)tableView cell:(UITableViewCell *)cell willAppearAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSIndexPath *)tableView:(UITableView *)tableView indexPathForObject:(id)object {
    return nil;
}

- (void)dealloc {
    [super dealloc];
}

#pragma -
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id object = [self tableView:tableView objectForRowAtIndexPath:indexPath];
    
    Class cellClass = [self tableView:tableView cellClassForObject:object];
    const char *className = [NSStringFromClass(cellClass) cStringUsingEncoding:NSASCIIStringEncoding];
    
    NSString *identifier = [[NSString alloc] initWithBytesNoCopy:(void *)className
                                                          length:strlen(className)
                                                        encoding:NSASCIIStringEncoding
                                                    freeWhenDone:NO];
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[[cellClass alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier] autorelease];
    }
    [identifier release];
    [self tableView:tableView cell:cell willAppearAtIndexPath:indexPath];
    
    return cell;
}

@end
