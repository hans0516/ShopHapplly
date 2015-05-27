//
//  SignIn.h
//  ShopHapplly
//
//  Created by AnjDenny on 09/05/15.
//  Copyright (c) 2015 ShopHapplly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignIn : UIViewController<UITextFieldDelegate>
{
    IBOutlet UIButton *btnSignIn,*btnSignUp,*btnForgetPassword;
    IBOutlet UITextField *textFieldUserName,*textFieldPassword;IBOutlet UIImageView *imageAppLogo;
    
    
}

@end
