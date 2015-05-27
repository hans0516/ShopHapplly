//
//  CardInfo.m
//  ShopHapplly
//
//  Created by AnjDenny on 10/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "CardInfo.h"
#import "CardInfo+UITableViewCell.h"

@interface CardInfo (){
    
    NSMutableArray *arrayCardInfo;
}

@end

@implementation CardInfo

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
    [self initialSetUp];
    
    arrayCardInfo=[[NSMutableArray alloc] initWithObjects:@"state bank of india",@"bank of baroda",@"ICIC bank",@"HDFC bank" ,nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initialSetUp{
    
    tableCardInfo.tableFooterView = [UIView new];
    tableCardInfo.separatorColor = [UIColor clearColor];
    
    btnNextCategories.layer.cornerRadius = 5;
    btnNextCategories.layer.borderWidth = 2;
    [btnNextCategories.layer setBorderColor:[[UIColor colorWithRed:0/255.0f green:137/255.0f blue:64/255.0f alpha:1] CGColor]];
    
    
    btnAddToProfile.layer.cornerRadius = 5;
    btnAddToProfile.layer.borderWidth = 2;
    [btnAddToProfile.layer setBorderColor:[[UIColor colorWithRed:154/255.0f green:14/255.0f blue:2/255.0f alpha:1] CGColor]];
    
}

- (IBAction)btnBandkDropDown_clicked:(id)sender {
}
- (IBAction)btnCardDropDown_clicked:(id)sender {
}
- (IBAction)btnAddToProfile_clicked:(id)sender {
}
- (IBAction)btnNextCategories_clicked:(id)sender {
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
    
    [cell setLblNumber:[NSString stringWithFormat:@"%d.",indexPath.row+1] setLblCardTitle:[NSString stringWithFormat:@"%@",[arrayCardInfo objectAtIndex:indexPath.row]]btnRemoveTitle:@"Remove"];
   
    [cell.btnRemove addTarget:self action:@selector(btnRemoveClicked_clicked:) forControlEvents:UIControlEventTouchUpInside];
    cell.btnRemove.tag = indexPath.row;
    return cell;
}

- (IBAction)btnRemoveClicked_clicked:(id)sender {
    
    UIButton *btnTemp=(UIButton*)sender;
    [arrayCardInfo removeObjectAtIndex:btnTemp.tag];
    [tableCardInfo reloadData];
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
