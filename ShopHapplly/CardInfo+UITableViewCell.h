//
//  CardInfo+UITableViewCell.h
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardInfo_UITableViewCell : UITableViewCell
{
    IBOutlet UILabel *lblNumbers,*lblCardTitle;
}

-(void)setLblNumber:(NSString *)lblNumber setLblCardTitle:(NSString *)cardTitle btnRemoveTitle:(NSString *)btnRemoveTitle;

@property(nonatomic, strong)IBOutlet UIButton *btnRemove;

@end
