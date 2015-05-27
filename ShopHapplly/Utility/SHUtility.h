//
//  SHUtility.h
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHUtility : NSObject
{
    MBProgressHUD *_mbProgress;
    MBProgressHUD *_mbAlert;
}

+ (SHUtility *) sharedUtility;

#pragma mark - progress & alert
- (void) showAlert:(NSString *)title message:(NSString *)message;
- (void) showMBProgress:(UIView *)view message:(NSString *)message;
- (void) hideMBProgress;
- (void) showMBAlert:(UIView *)view message:(NSString *)message;

#pragma mark - timestamp
- (void) printTimeStamp;

#pragma mark - image download
+ (UIImage *) getCachedImageFromPath:(NSString *)PathURL withName:(NSString *)filename;
+ (NSString *) getFileName:(NSString *)strUrl;
+ (NSString *) getFilePath:(NSString *)strUrl;

@end
