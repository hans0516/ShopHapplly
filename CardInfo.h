//
//  CardInfo.h
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardInfo : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    
    IBOutlet UIButton *btnBankDropDown,*btnCardDropDown,*btnAddToProfile,*btnNextCategories;
    
    IBOutlet UITableView *tableCardInfo;
}

@end
