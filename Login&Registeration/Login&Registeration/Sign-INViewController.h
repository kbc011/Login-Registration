//
//  Sign-INViewController.h
//  Login&Registeration
//
//  Created by Bharat chowdary Kolla on 3/2/17.
//  Copyright © 2017 Bharat chowdary Kolla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Sign_INViewController : UIViewController {
    
    IBOutlet UILabel *SignIN;
    IBOutlet UITextField *EmailID;
    IBOutlet UITextField *Password;
    IBOutlet UIButton *Login;
    IBOutlet UIButton *Cancel;
    
}

-(IBAction)Login:(id)sender;
-(IBAction)Cancel:(id)sender;

@end
