//
//  SHServer.m
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SHServer.h"

@implementation SHServer

static id instance = nil;

+ (SHServer *)sharedServer
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [SHServer new];
    });
    
    return instance;
}

- (id) init
{
    if(self = [super init])
    {
        _operationManager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:SERVER_URL]];
        _operationManager.requestSerializer = [AFJSONRequestSerializer serializer];
        [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    }
    
    return self;
}

# pragma mark - get card & categories & malls
- (void) getCardsList:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock
{
    [_operationManager GET:@"product/cards"
                    parameters:nil
                       success:^(AFHTTPRequestOperation *operation, id response){
                           
                           successBlock(response);
                       }failure:^(AFHTTPRequestOperation *operation, NSError *error){
                           
                           failureBlock(operation);
                       }];
}

- (void) getCategoriesList:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock
{
    [_operationManager GET:@"product/categories"
                parameters:nil
                   success:^(AFHTTPRequestOperation *operation, id response){
                       
                       successBlock(response);
                   }failure:^(AFHTTPRequestOperation *operation, NSError *error){
                       
                       failureBlock(operation);
                   }];
}

- (void) getMallsList:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock
{
    [_operationManager GET:@"product/malls"
                parameters:nil
                   success:^(AFHTTPRequestOperation *operation, id response){
                       
                       successBlock(response);
                   }failure:^(AFHTTPRequestOperation *operation, NSError *error){
                       
                       failureBlock(operation);
                   }];
}

#pragma mark - login
- (void) signUp:(SHUser *)user success:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock
{
    NSDictionary *params = @{
                             @"user_name":user.user_name,
                             @"email":user.email,
                             @"password":user.password,
                             @"gender":@(user.gender),
                             @"birthday":@{
                                            @"month":@(user.birthday.month),
                                            @"year":@(user.birthday.year)
                                           }

                             };
    
    [_operationManager POST:@"sign_up.php"
                parameters:params
                   success:^(AFHTTPRequestOperation *operation, id response){
                       
                       successBlock(response);
                   }failure:^(AFHTTPRequestOperation *operation, NSError *error){
                       
                       failureBlock(operation);
                   }];
    
}

@end
