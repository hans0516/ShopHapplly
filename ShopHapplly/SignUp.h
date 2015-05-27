//
//  SignUp.h
//  ShopHapplly
//
//  Created by AnjDenny on 09/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RadioButton.h"
#import "VSDropdown.h"

@interface SignUp : UIViewController<VSDropdownDelegate>
{
    IBOutlet UITextField    *_tf_username;
    IBOutlet UITextField    *_tf_email;
    IBOutlet UITextField    *_tf_password;
    IBOutlet UITextField    *_tf_confirmPassword;
    IBOutlet UIButton       *_btn_birthMonth;
    IBOutlet UIButton       *_btn_birthYear;
    IBOutlet RadioButton    *_btn_gender;

    NSMutableArray          *_monthArray;
    NSMutableArray          *_yearArray;
    
    VSDropdown              *_dropdown;
}

- (IBAction)showMonth:(id)sender;
- (IBAction)showYear:(id)sender;
- (IBAction)signUpWithEmail:(id)sender;
- (IBAction)signUpWithFacebook:(id)sender;

@end
