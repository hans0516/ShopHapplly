//
//  HomeScreen.h
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PagedImageScrollView.h"

@interface HomeScreen : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    IBOutlet UISearchBar *searchBar;
    IBOutlet PagedImageScrollView *pageScrollView;
}
@end
