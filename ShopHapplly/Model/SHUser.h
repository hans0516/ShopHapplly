//
//  SHUser.h
//  ShopHapplly
//
//  Created by Hans Oscar on 26/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum SHGender
{
    Male = 0,
    Female
}SHGender;

typedef struct SHBirthday
{
    int year;
    int month;
}SHBirthday;

@interface SHUser : NSObject
{
    
}
@property(nonatomic, retain) NSString *user_id;
@property(nonatomic, retain) NSString *user_name;
@property(nonatomic, retain) NSString *email;
@property(nonatomic, retain) NSString *password;
@property(nonatomic, readwrite) SHGender gender;
@property(nonatomic, assign) SHBirthday birthday;

+ (SHUser *)sharedUser;

@end
