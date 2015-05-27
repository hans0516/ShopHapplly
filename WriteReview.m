//
//  WriteReview.m
//  ShopHapplly
//
//  Created by AnjDenny on 14/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "WriteReview.h"

@interface WriteReview ()

@end

@implementation WriteReview

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
    
    btnLikeThis.layer.cornerRadius = 5;
    btnLikeThis.layer.borderWidth = 2;
    [btnLikeThis.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnReviews.layer.cornerRadius = 5;
    btnReviews.layer.borderWidth = 2;
    [btnReviews.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnTakeMeThere.layer.cornerRadius = 5;
    btnTakeMeThere.layer.borderWidth = 2;
    [btnTakeMeThere.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnSend.layer.cornerRadius = 5;
    btnSend.layer.borderWidth = 2;
    [btnSend.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    txtWriteReview.layer.cornerRadius = 5;
    txtWriteReview.layer.borderWidth = 2;
    txtWriteReview.layer.borderColor = [[UIColor blackColor] CGColor];
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
