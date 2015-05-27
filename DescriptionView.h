//
//  DescriptionView.h
//  ShopHapplly
//
//  Created by AnjDenny on 12/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DescriptionView : UIViewController
{
    IBOutlet UILabel *lblTitleMain,*lblTitleDescription,*lblTitlePromotion,*lblTitleTerms;
    IBOutlet UILabel *lblDescription,*lblPromotion,*lblTerms;
    IBOutlet UIImageView *imageCategory;
    IBOutlet UIScrollView *scrollMain;
    IBOutlet UIButton *btnLoginToShare,*btnLoginToReview,*btnRemindMeLatter;
    
}
@end
