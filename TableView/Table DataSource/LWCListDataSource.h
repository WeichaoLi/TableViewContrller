//
//  LWCListDataSource.h
//  TableViewContrller
//
//  Created by 李伟超 on 15/3/3.
//  Copyright (c) 2015年 LWC. All rights reserved.
//

#import "LWCTableViewDataSource.h"

typedef enum _tableviewcellType{
    tablecell_Default = 0,
    tablecell_Image = 1,
}tablecellType;

@interface LWCListDataSource : LWCTableViewDataSource


@property (nonatomic, assign) tablecellType cellType;
@property (nonatomic, retain) NSMutableArray *items;

+ (LWCListDataSource *)dataSourceWithObjects:(id)object,...;

+ (LWCListDataSource *)dataSourceWithItems:(NSMutableArray*)items;

- (id)initWithItems:(NSArray *)items;

@end
