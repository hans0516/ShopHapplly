//
//  SHPlace.m
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHPlace.h"

@implementation SHPlace

- (id) initWithPlaceId:(NSString *)place_id name:(NSString  *)place_name mallList:(NSArray *)mall_list
{
    if(self = [super initWithId:place_id name:place_name])
    {
        if(!_mallList)
            _mallList = [[NSMutableArray alloc] init];
        
        for(NSDictionary *mall in mall_list)
        {
            NSString *mall_id = mall[@"mall_id"];
            NSString *mall_name = mall[@"mall_name"];
            SHMall *aMall = [[SHMall alloc] initWithId:mall_id name:mall_name];
            [_mallList addObject:aMall];
        }
    }
    
    return self;
}

@end
