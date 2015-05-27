//
//  SHServer.h
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHUser.h"

@interface SHServer : NSObject
{
    AFHTTPRequestOperationManager *_operationManager;
}

+ (SHServer *)sharedServer;

# pragma mark - get card & categories & malls
- (void) getCardsList:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock;
- (void) getCategoriesList:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock;
- (void) getMallsList:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock;

#pragma mark - login
- (void) signUp:(SHUser *)user success:(void(^)(NSDictionary *response))successBlock failure:(void(^)(AFHTTPRequestOperation *operation))failureBlock;
@end
