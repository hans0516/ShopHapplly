//
//  CategoryView.m
//  ShopHapplly
//
//  Created by AnjDenny on 11/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "CategoryView.h"
#import "CategoryView+UICollectionViewCell.h"

@interface CategoryView ()
{
    NSArray *recipePhotos;
    NSArray *arrTitle;
    NSArray *arrCompany;
}
@end

@implementation CategoryView

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
    
    recipePhotos = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
    
    arrTitle = [NSArray arrayWithObjects:@"Dining",@"Beauty",@"Petrol",@"Fashion",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",nil];
    
    arrCompany = [NSArray arrayWithObjects:@"Dining",@"Beauty",@"Petrol",@"Fashion",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",@"Health",nil];
    // Do any additional setup after loading the view.
}
//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    
//    return recipePhotos.count;
//}
//
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//    static NSString *identifier = @"Cell";
//    
//    CategoryView_UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
//    
//    [cell setTempletImage:[recipePhotos objectAtIndex:indexPath.row] setTempletTitle:[arrTitle objectAtIndex:indexPath.row]setCompant:[arrCompany objectAtIndex:indexPath.row]];
//    
//    cell.buttonTemplet.tag = indexPath.row;
//    
//    [cell.buttonTemplet addTarget:self action:@selector(btnTemplet_clicked:) forControlEvents:UIControlEventTouchUpInside];
//    
//    return cell;
//}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return recipePhotos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
        static NSString *identifier = @"Cell";
    
        CategoryView_UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
        [cell setTempletImage:[recipePhotos objectAtIndex:indexPath.row] setTempletTitle:[arrTitle objectAtIndex:indexPath.row]setCompant:[arrCompany objectAtIndex:indexPath.row]];
    
        cell.buttonTemplet.tag = indexPath.row;
    
        [cell.buttonTemplet addTarget:self action:@selector(btnTemplet_clicked:) forControlEvents:UIControlEventTouchUpInside];
        return cell;
}

- (IBAction)btnTemplet_clicked:(id)sender {
    
    UIButton *btnTemp = (UIButton *)sender;
    NSLog(@"%ld",(long)btnTemp.tag);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
