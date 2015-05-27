//
//  Categories.m
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "Categories.h"
#import "CardInfo+UITableViewCell.h"
@interface Categories ()
{
    NSMutableArray *arrayCardInfo;;
}
@end

@implementation Categories

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
    arrayCardInfo=[[NSMutableArray alloc] initWithObjects:@"Dining",@"Fashion",@"Foot Wear",@"Dressing",@"Petrol",@"Beauty", nil];
    btnShopHapplly.layer.cornerRadius = 5;
    btnShopHapplly.layer.borderWidth = 2;
    [btnShopHapplly.layer setBorderColor:[[UIColor colorWithRed:0/255.0f green:137/255.0f blue:64/255.0f alpha:1] CGColor]];
    tblCategories.tableFooterView = [UIView new];
    tblCategories.separatorColor = [UIColor clearColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayCardInfo count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier=@"cell";
    
    CardInfo_UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    [cell setLblNumber:[NSString stringWithFormat:@"%d.",indexPath.row+1] setLblCardTitle:[NSString stringWithFormat:@"%@",[arrayCardInfo objectAtIndex:indexPath.row]]btnRemoveTitle:@"Subscribe"];
    
    [cell.btnRemove addTarget:self action:@selector(btnSubscribe_clicked:) forControlEvents:UIControlEventTouchUpInside];
    
    cell.btnRemove.tag = indexPath.row;
    return cell;
}

- (IBAction)btnSubscribe_clicked:(id)sender {
    
}
- (IBAction)btnShopHapplly_clicked:(id)sender {
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
