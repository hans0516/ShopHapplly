//
//  CardInfo+UITableViewCell.m
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "CardInfo+UITableViewCell.h"

@implementation CardInfo_UITableViewCell

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

-(void)setLblNumber:(NSString *)lblNumber setLblCardTitle:(NSString *)cardTitle btnRemoveTitle:(NSString *)btnRemoveTitle{
    
    [lblNumbers setText:lblNumber];
    lblNumbers.textColor = [UIColor colorWithRed:99/255.0f green:99/255.0f blue:99/255.0f alpha:1];
    
    [lblCardTitle setText:cardTitle];
    lblCardTitle.textColor = [UIColor colorWithRed:99/255.0f green:99/255.0f blue:99/255.0f alpha:1];
    
    [self.btnRemove setTitle:btnRemoveTitle forState:UIControlStateNormal];
    self.btnRemove.layer.cornerRadius = 3;
}

@end
