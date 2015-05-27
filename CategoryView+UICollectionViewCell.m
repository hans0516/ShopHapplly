//
//  CategoryView+UICollectionViewCell.m
//  ShopHapplly
//
//  Created by AnjDenny on 11/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "CategoryView+UICollectionViewCell.h"

@implementation CategoryView_UICollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void)setTempletImage:(NSString *)strImage setTempletTitle:(NSString *)strTitle setCompant:(NSString *)strCompany{
    
    [self.imageTemplet setImage:[UIImage imageNamed:strImage]];
    [self.titleLabelTemplet setText:strTitle];
    [self.companyLabelTemplet setText:strCompany];
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
