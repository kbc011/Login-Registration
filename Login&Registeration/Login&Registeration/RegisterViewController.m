//
//  RegisterViewController.m
//  Login&Registeration
//
//  Created by Bharat chowdary Kolla on 3/2/17.
//  Copyright © 2017 Bharat chowdary Kolla. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)SignUp:(id)sender;
{

NSString *strFirstName = FirstName.text;
NSString *strLastName = LastName.text;
NSString *strEmail = EmailID.text;
NSString *strPassword = Password.text;
NSString *strConfirmPassword = ConfirmPassword.text;
NSString *strPhoneNumber = PhoneNumber.text;

NSInteger lenthPhoneNumber = strPhoneNumber.length;


if ([strFirstName isEqualToString:@""] && [strLastName isEqualToString:@""]&& [strEmail isEqualToString:@""] && [strPassword isEqualToString:@""] && [strPassword isEqualToString:@""] &&[strConfirmPassword isEqualToString:@""] && [strPhoneNumber isEqualToString:@""]) {
    
    [self AlertShow:@"All fields Required"];
    
}
else if ([strFirstName isEqualToString:@""]){
    
    [self AlertShow: @"Please Enter FirstName"];
    
}
else if ([strLastName isEqualToString:@""]){
    
    [self AlertShow: @"Please Enter LastName"];
}
else if ([strEmail isEqualToString:@""]){
    
    [self AlertShow: @"Please Enter Email"];
}
else if ([strPassword isEqualToString:@""]){
    
    [self AlertShow: @"Please Enter Password"];
}
else if ([strConfirmPassword isEqualToString:@""]){
    
    [self AlertShow: @"Please Enter ConfirmPassword"];
}
else if ([strPhoneNumber isEqualToString:@""]){
    
    [self AlertShow: @"Please Enter PhoneNumber"];
}
else if (strPassword != strConfirmPassword) {
    
    [self AlertShow:@"Please Check the Password"];
    
}
else if (lenthPhoneNumber != 10)
{
    [self AlertShow:@"Please Check the Phone Number"];
    
}

else {
    [self AlertShow:@"Success"];
    
}

}


-(IBAction)Cancel:(id)sender;

{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)AlertShow:(NSString *)strMessage
{
    UIAlertController *alertObj =[UIAlertController alertControllerWithTitle:@"Alert" message:strMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alertObj addAction:okAction];
    
    [self  presentViewController:alertObj animated:YES completion:nil];
    
    
}


@end
