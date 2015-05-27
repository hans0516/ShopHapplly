//
//  HomeScreen+UICollectionViewCell.h
//  ShopHapplly
//
//  Created by AnjDenny on 11/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeScreen_UICollectionViewCell : UICollectionViewCell


@property(nonatomic ,strong)IBOutlet UIImageView *imageTemplet;
@property(nonatomic ,strong)IBOutlet UILabel *labelTemplet;
@property(nonatomic ,strong)IBOutlet UIButton *buttonTemplet;

-(void)setTempletImage:(NSString *)strImage setTempletTitle:(NSString *)strTitle;

@end
