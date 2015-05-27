//
//  HomeScreen+UICollectionViewCell.m
//  ShopHapplly
//
//  Created by AnjDenny on 11/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "HomeScreen+UICollectionViewCell.h"

@implementation HomeScreen_UICollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setTempletImage:(NSString *)strImage setTempletTitle:(NSString *)strTitle{
    
    [self.imageTemplet setImage:[UIImage imageNamed:strImage]];
    [self.labelTemplet setText:strTitle];
}

@end
