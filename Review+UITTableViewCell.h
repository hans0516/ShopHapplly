//
//  Review+UITTableViewCell.h
//  ShopHapplly
//
//  Created by AnjDenny on 14/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Review_UITTableViewCell : UITableViewCell


@property(nonatomic ,strong)IBOutlet UIImageView *imgProfile;
@property(nonatomic ,strong)IBOutlet UILabel *lblReview;
@property(nonatomic ,strong)IBOutlet UILabel *lblDate;

-(void)setImage:(NSString *)imageName setReview:(NSString *)strReview setReviewDate:(NSString *)strReviewDate;

@end
