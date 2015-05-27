//
//  SHBank.m
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHBank.h"

@implementation SHBank

- (id) initWithBankId:(NSString *)bank_id bankName:(NSString *)bank_name cardList:(NSArray *)card_list
{
    if(self = [super initWithId:bank_id name:bank_name])
    {
        if(!_cardList)
            _cardList = [[NSMutableArray alloc] init];
        
        for(NSDictionary *card in card_list)
        {
            NSString *card_id = card[@"card_id"];
            NSString *card_name = card[@"card_name"];
            SHCard *aCard = [[SHCard alloc] initWithId:card_id name:card_name];
            [_cardList addObject:aCard];
        }
    }
    
    return self;
}

@end
