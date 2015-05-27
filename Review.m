//
//  Review.m
//  ShopHapplly
//
//  Created by AnjDenny on 14/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "Review.h"
#include "Review+UITTableViewCell.h"

@interface Review ()
{
    NSArray *arrImage, *arrReview, *arrDate;
}
@end

@implementation Review

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
    
    arrImage = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
    
    arrReview = [NSArray arrayWithObjects:@"Dining",@"Beauty",@"Petrol",@"Fashion",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",nil];
    
    arrDate = [NSArray arrayWithObjects:@"Dining",@"Beauty",@"Petrol",@"Fashion",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",nil];
    
    
    btnLikeThis.layer.cornerRadius = 5;
    btnLikeThis.layer.borderWidth = 2;
    [btnLikeThis.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnReviews.layer.cornerRadius = 5;
    btnReviews.layer.borderWidth = 2;
    [btnReviews.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnTakeMeThere.layer.cornerRadius = 5;
    btnTakeMeThere.layer.borderWidth = 2;
    [btnTakeMeThere.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [arrImage count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cell";
    
    Review_UITTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    [cell setImage:[arrImage objectAtIndex:indexPath.row] setReview:[arrReview objectAtIndex:indexPath.row] setReviewDate:[arrDate objectAtIndex:indexPath.row]];
    
    return cell;
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
