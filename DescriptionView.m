//
//  DescriptionView.m
//  ShopHapplly
//
//  Created by AnjDenny on 12/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "DescriptionView.h"

@interface DescriptionView ()
{
    NSString *strDescription, *strPromotion, *strTerms;;
    
}
@end

@implementation DescriptionView

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

-(void)viewDidAppear:(BOOL)animated{
    
    [self initialSetUp];
}

-(void)viewWillAppear:(BOOL)animated{
    
    [self initialSetUp];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews{
    [scrollMain setContentSize:CGSizeMake(0,700)];
}

-(void)initialSetUp{
        
    btnLoginToShare.layer.cornerRadius = 5;
    btnLoginToShare.layer.borderWidth = 2;
    [btnLoginToShare.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnLoginToReview.layer.cornerRadius = 5;
    btnLoginToReview.layer.borderWidth = 2;
    [btnLoginToReview.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
    
    btnRemindMeLatter.layer.cornerRadius = 5;
    btnRemindMeLatter.layer.borderWidth = 2;
    [btnRemindMeLatter.layer setBorderColor:[[UIColor colorWithRed:149/255.0f green:0/255.0f blue:0/255.0f alpha:1] CGColor]];
}


-(CGRect)setDynamicHeight:(UILabel *)lbl{
    
    CGRect myLabelFrame = [lbl frame];
    NSString *text = lbl.text;
    CGFloat width = lbl.frame.size.width;
    UIFont *font = lbl.font;
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:text attributes:@{ NSFontAttributeName: font}];
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){width, CGFLOAT_MAX}options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    CGSize size = rect.size;
    myLabelFrame.size.height = size.height;
    return myLabelFrame;
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
