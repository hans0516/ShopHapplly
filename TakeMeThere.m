//
//  TakeMeThere.m
//  ShopHapplly
//
//  Created by AnjDenny on 14/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "TakeMeThere.h"

@interface TakeMeThere ()

@end

@implementation TakeMeThere

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    
    btnReviews.layer.cornerRadius = 5;
    btnReviews.layer.borderWidth = 2;
    [btnReviews.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnBackToPromo.layer.cornerRadius = 5;
    btnBackToPromo.layer.borderWidth = 2;
    [btnBackToPromo.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
