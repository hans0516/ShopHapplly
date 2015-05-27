//
//  Review+UITTableViewCell.m
//  ShopHapplly
//
//  Created by AnjDenny on 14/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "Review+UITTableViewCell.h"

@implementation Review_UITTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setImage:(NSString *)imageName setReview:(NSString *)strReview setReviewDate:(NSString *)strReviewDate{
    
    self.imgProfile.image = [UIImage imageNamed:imageName];
    self.imgProfile.layer.cornerRadius = self.imgProfile.frame.size.width/2;
    self.imgProfile.layer.masksToBounds = YES;
    
    self.lblReview.text = strReview;
    
    self.lblDate.text = strReviewDate;
}


@end
