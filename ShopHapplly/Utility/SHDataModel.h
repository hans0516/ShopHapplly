//
//  SHDataModel.h
//  ShopHapplly
//
//  Created by Hans Oscar on 19/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHDataModel : NSObject
{
    
}

@property (nonatomic, retain) NSMutableArray *m_pCardsList;
@property (nonatomic, retain) NSMutableArray *m_pCategoriesList;
@property (nonatomic, retain) NSMutableArray *m_pMallsList;

+ (SHDataModel *) sharedDataModel;

#pragma mark - get card & categories & malls
- (void) getCardsList;
- (void) getCategoriesList;
- (void) getMallList;

@end
