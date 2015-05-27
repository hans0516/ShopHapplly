//
//  SHBank.h
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHBaseModel.h"

@interface SHBank : SHBaseModel
{
    NSMutableArray *_cardList;
}

- (id) initWithBankId:(NSString *)bank_id bankName:(NSString *)bank_name cardList:(NSArray *)card_list;
@end
