//
//  RegisterViewController.h
//  Login&Registeration
//
//  Created by Bharat chowdary Kolla on 3/2/17.
//  Copyright © 2017 Bharat chowdary Kolla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController {
    
    
    IBOutlet UILabel *Register;
    IBOutlet UITextField *FirstName;
    IBOutlet UITextField *LastName;
    IBOutlet UITextField *EmailID;
    IBOutlet UITextField *Password;
    IBOutlet UITextField *ConfirmPassword;
    IBOutlet UITextField *PhoneNumber;
    IBOutlet UIButton *SignUp;
    IBOutlet UIButton *Cancel;
}

-(IBAction)SignUp:(id)sender;
-(IBAction)Cancel:(id)sender;


@end
