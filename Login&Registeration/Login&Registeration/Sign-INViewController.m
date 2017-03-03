//
//  Sign-INViewController.m
//  Login&Registeration
//
//  Created by Bharat chowdary Kolla on 3/2/17.
//  Copyright © 2017 Bharat chowdary Kolla. All rights reserved.
//

#import "Sign-INViewController.h"

@interface Sign_INViewController ()

@end

@implementation Sign_INViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(IBAction)Login:(id)sender;
{
    {
        
        NSString *strEmail = EmailID.text;
        NSString *strPassword = Password.text;
        
        
        
        if ([strEmail isEqualToString:@""] && [strPassword isEqualToString:@""] ) {
            
            [self AlertShow:@"All fields Required"];
            
        }
                else if ([strEmail isEqualToString:@""]){
            
            [self AlertShow: @"Please Enter Email"];
        }
        else if ([strPassword isEqualToString:@""]){
            
            [self AlertShow: @"Please Enter Password"];
        }
        
        else {
            [self AlertShow:@"Success"];
            
        }
        
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
