//
//  SHPlace.h
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHBaseModel.h"

@interface SHPlace : SHBaseModel
{
    NSMutableArray *_mallList;
}

- (id) initWithPlaceId:(NSString *)place_id name:(NSString  *)place_name mallList:(NSArray *)mall_list;

@end
