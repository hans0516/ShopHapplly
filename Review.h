//
//  Review.h
//  ShopHapplly
//
//  Created by AnjDenny on 14/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Review : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UIButton *btnLikeThis,*btnTakeMeThere,*btnReviews;
    IBOutlet UIImageView *imageCategory;
    IBOutlet UITableView *tblReviews;
}
@end
