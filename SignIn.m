//
//  SignIn.m
//  ShopHapplly
//
//  Created by AnjDenny on 09/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SignIn.h"

@interface SignIn ()

@end

@implementation SignIn

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
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initialSetUp{
    
    btnForgetPassword.layer.cornerRadius = 5;
    
    btnSignIn.layer.cornerRadius = 5;
    btnSignIn.layer.borderWidth = 2;
    [btnSignIn.layer setBorderColor:[[UIColor colorWithRed:0/255.0f green:137/255.0f blue:64/255.0f alpha:1] CGColor]];
    
    
    btnSignUp.layer.cornerRadius = 5;
    btnSignUp.layer.borderWidth = 2;
    [btnSignUp.layer setBorderColor:[[UIColor colorWithRed:154/255.0f green:14/255.0f blue:2/255.0f alpha:1] CGColor]];
    
    NSMutableAttributedString *titleString = [[NSMutableAttributedString alloc] initWithString:btnForgetPassword.titleLabel.text];
    
    // making text property to underline text-
    [titleString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, [titleString length])];
    
    // using text on button
    [btnForgetPassword setAttributedTitle: titleString forState:UIControlStateNormal];
}

- (IBAction)btnSingIn_Clicked:(id)sender {
}
- (IBAction)btnSignUp_Clicked:(id)sender {
}
- (IBAction)btnForgetPassword_Clicked:(id)sender {
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField;{
    
    return [textField endEditing:YES];
    
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
