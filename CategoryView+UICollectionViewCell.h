//
//  CategoryView+UICollectionViewCell.h
//  ShopHapplly
//
//  Created by AnjDenny on 11/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryView_UICollectionViewCell : UICollectionViewCell


@property(nonatomic, strong)IBOutlet UIImageView *imageTemplet;
@property(nonatomic, strong)IBOutlet UIButton *buttonTemplet;
@property(nonatomic, strong)IBOutlet UILabel *titleLabelTemplet;
@property(nonatomic, strong)IBOutlet UILabel *companyLabelTemplet;

-(void)setTempletImage:(NSString *)strImage setTempletTitle:(NSString *)strTitle setCompant:(NSString *)strCompany;

@end
