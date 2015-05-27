//
//  SHBaseModel.h
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHBaseModel : NSObject
{
    NSString *_id;
    NSString *_name;
}

- (id) initWithId:(NSString *) item_id name:(NSString *)item_name;

@end
