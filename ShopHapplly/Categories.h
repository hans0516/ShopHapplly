//
//  Categories.h
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Categories : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *tblCategories;
    IBOutlet UIButton *btnShopHapplly;
    
}

@end
