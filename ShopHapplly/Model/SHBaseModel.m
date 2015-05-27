//
//  SHBaseModel.m
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHBaseModel.h"

@implementation SHBaseModel

- (id) initWithId:(NSString *) item_id name:(NSString *)item_name
{
    if(self = [super init])
    {
        _id = item_id;
        _name = item_name;
    }
    
    return self;
}
@end
