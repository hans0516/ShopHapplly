//
//  SHDataModel.m
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHDataModel.h"

@implementation SHDataModel
@synthesize m_pCardsList = _m_pCardsList;
@synthesize m_pCategoriesList = _m_pCategoriesList;
@synthesize m_pMallsList = _m_pMallsList;

static id instance = nil;

+ (SHDataModel *) sharedDataModel
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [SHDataModel new];
    });
    
    return instance;
}

- (id) init
{
    if(self = [super init])
    {
        if(!_m_pCardsList)
            _m_pCardsList = [[NSMutableArray alloc] init];
        
        if(!_m_pCategoriesList)
            _m_pCategoriesList = [[NSMutableArray alloc] init];
        
        if(!_m_pMallsList)
            _m_pMallsList = [[NSMutableArray alloc] init];
    }
    
    return self;
}

#pragma mark - get card & categories
- (void) getCardsList
{
    [[SHServer sharedServer] getCardsList:^(NSDictionary *response){
        
        NSLog(@"----- GET CARDS LIST -----\n%@", response);
        
        if([response[@"status"] isEqualToString:@"success"])
        {
            NSArray *banks = [[NSMutableArray alloc] initWithArray:response[@"items"]];
            for(NSDictionary *bank in banks)
            {
                NSString *bank_id = bank[@"bank_id"];
                NSString *bank_name = bank[@"bank_name"];
                NSArray *card_list = [[NSArray alloc] initWithArray:bank[@"lists"]];
                SHBank *aBank = [[SHBank alloc] initWithBankId:bank_id bankName:bank_name cardList:card_list];
                [_m_pCardsList addObject:aBank];
            }
            
        }
     }failure:^(AFHTTPRequestOperation *operation){
         
         [[SHUtility sharedUtility] hideMBProgress];
         [[SHUtility sharedUtility] showAlert:@"GET CARDS" message:operation.error.description];
     }];
}

- (void) getCategoriesList
{
    [[SHServer sharedServer] getCategoriesList:^(NSDictionary *response){
        
        NSLog(@"----- GET CATEGORIES LIST -----\n%@", response);
        
        if([response[@"status"] isEqualToString:@"success"])
        {
            NSArray *categories = [[NSMutableArray alloc] initWithArray:response[@"items"]];
            for(NSDictionary *category in categories)
            {
                NSString *category_id = category[@"category_id"];
                NSString *category_name = category[@"category_name"];
                SHCategory *aCategory = [[SHCategory alloc] initWithId:category_id name:category_name];
                [_m_pCategoriesList addObject:aCategory];
            }
        }
    }failure:^(AFHTTPRequestOperation *operation){
        
        [[SHUtility sharedUtility] hideMBProgress];
        [[SHUtility sharedUtility] showAlert:@"GET CATEGORIES" message:operation.error.description];
    }];
}

- (void) getMallList
{
    [[SHServer sharedServer] getMallsList:^(NSDictionary *response){
        
        NSLog(@"----- GET MALLS LIST -----\n%@", response);
        
        if([response[@"status"] isEqualToString:@"success"])
        {
            NSArray *places = [[NSMutableArray alloc] initWithArray:response[@"items"]];
            for(NSDictionary *place in places)
            {
                NSString *place_id = place[@"place_id"];
                NSString *place_name = place[@"place_name"];
                NSArray *mall_list = [[NSArray alloc] initWithArray:place[@"lists"]];
                SHPlace *aPlace = [[SHPlace alloc] initWithPlaceId:place_id name:place_name mallList:mall_list];
                [_m_pMallsList addObject:aPlace];
            }
        }
    }failure:^(AFHTTPRequestOperation *operation){
        
        [[SHUtility sharedUtility] hideMBProgress];
        [[SHUtility sharedUtility] showAlert:@"GET PLACES" message:operation.error.description];
    }];

}

@end
