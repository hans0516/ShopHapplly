//
//  SHUser.m
//  ShopHapplly
//
//  Created by Hans Oscar on 26/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHUser.h"

@implementation SHUser
@synthesize user_id;
@synthesize user_name;
@synthesize email;
@synthesize password;
@synthesize gender;
@synthesize birthday;

static id instance = nil;

+ (SHUser *)sharedUser
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [SHUser new];
    });
    
    return instance;
}

- (id) init
{
    if(self = [super init])
    {
        
    }
    
    return self;
}

@end
