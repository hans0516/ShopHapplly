//
//  SignUp.m
//  ShopHapplly
//
//  Created by AnjDenny on 09/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import "SignUp.h"
#import "SHUser.h"

@interface SignUp ()

@end

@implementation SignUp

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initialSetUp];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)initialSetUp
{
//    btnRegister.layer.cornerRadius = 5;
//    btnRegister.layer.borderWidth = 1;
//    [btnRegister.layer setBorderColor:[[UIColor colorWithRed:0/255.0f green:137/255.0f blue:64/255.0f alpha:1] CGColor]];
    
    _monthArray = [[NSMutableArray alloc] initWithObjects:@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", nil];
    _yearArray = [[NSMutableArray alloc] init];
    NSCalendar *gregorian = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    NSInteger year = [gregorian component:NSCalendarUnitYear fromDate:NSDate.date];
    
    for(int i=1900; i<year; i++)
    {
        [_yearArray addObject:[NSString stringWithFormat:@"%d", i]];
    }
    
    _dropdown = [[VSDropdown alloc] initWithDelegate:self];
    _dropdown.backgroundColor = [UIColor blackColor];
    [_dropdown setAdoptParentTheme:NO];
    [_dropdown setShouldSortItems:NO];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField;{
    
    return [textField endEditing:YES];
}

- (IBAction)showMonth:(id)sender
{
    [self showDropDownForButton:sender adContents:_monthArray];
}

- (IBAction)showYear:(id)sender
{
    [self showDropDownForButton:sender adContents:_yearArray];
}

- (IBAction)signUpWithEmail:(id)sender
{
    if([_tf_username.text isEqualToString:@""])
    {
        [[SHUtility sharedUtility] showAlert:@"SignUp" message:@"Please enter user name"];
        return;
    }
    if([_tf_email.text isEqualToString:@""])
    {
        [[SHUtility sharedUtility] showAlert:@"SignUp" message:@"Please enter email"];
        return;
    }
    if([_tf_password.text isEqualToString:@""])
    {
        [[SHUtility sharedUtility] showAlert:@"SignUp" message:@"Please enter password"];
        return;
    }
    if(![_tf_password.text isEqualToString:_tf_confirmPassword.text])
    {
        [[SHUtility sharedUtility] showAlert:@"SignUp" message:@"Confirm password is not match with password"];
        return;
    }
    
    SHUser *user = [SHUser sharedUser];
    user.user_name = _tf_username.text;
    user.email = _tf_email.text;
    user.password = _tf_password.text;
    
    user.gender = (_btn_gender.selected) ? Male : Female;

    SHBirthday birthday;
    birthday.year = _btn_birthYear.titleLabel.text.intValue;
    birthday.month = (int)[_monthArray indexOfObject: _btn_birthMonth.titleLabel.text]+1;
    user.birthday = birthday;
    
    [[SHUtility sharedUtility] showMBProgress:self.view message:@"Sign Up"];
    [[SHServer sharedServer] signUp:user success:^(NSDictionary *response)
     {
         [[SHUtility sharedUtility] hideMBProgress];
         
         NSLog(@"----------사용자 등록 응답----------\n%@", response);
         if([response[@"status"] isEqualToString:@"success"])
         {
             
         }
         else
         {
             [[SHUtility sharedUtility] showAlert:@"SignUp" message:response[@"message"]];
         }
     }failure:^(AFHTTPRequestOperation *operation)
     {
         [[SHUtility sharedUtility] hideMBProgress];
         [[SHUtility sharedUtility] showAlert:@"SignUp" message:operation.error.description];
     }
     ];
    
}

- (IBAction)signUpWithFacebook:(id)sender
{
    
}

-(void)showDropDownForButton:(UIButton *)sender adContents:(NSArray *)contents
{
    [_dropdown setDrodownAnimation:rand()%2];
    
    [_dropdown setupDropdownForView:sender];
    [_dropdown reloadDropdownWithContents:contents andSelectedString:((UIButton *)sender).titleLabel.text];
}

#pragma mark - VSDropdown Delegate
- (void)dropdown:(VSDropdown *)dropDown didSelectValue:(NSString *)str atIndex:(NSUInteger)index
{
    if ([dropDown.dropDownView isKindOfClass:[UIButton class]])
    {
        UIButton *btn = (UIButton *)dropDown.dropDownView;
        [btn setTitle:str forState:UIControlStateNormal];
    }
}


@end
