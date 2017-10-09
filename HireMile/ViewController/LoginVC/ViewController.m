//
//  ViewController.m
//  HireMile
//
//  Created by abc on 02/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import "ViewController.h"
#import "SignupVC.h"
#import "ForgotVC.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize m_KeyboarsScrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
    NavigationHidden
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
# pragma Mark :- IBAction
- (IBAction)LoginClicking:(UIButton *)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
SignupVC * _vc = (SignupVC*)[storyBoard instantiateViewControllerWithIdentifier:@"SignupVC"];
    [self.navigationController pushViewController:_vc animated:YES];
}
- (IBAction)NeedaAccount:(UIButton *)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SignupVC * _vc = (SignupVC*)[storyBoard instantiateViewControllerWithIdentifier:@"SignupVC"];
    [self.navigationController pushViewController:_vc animated:YES];
}

- (IBAction)ForgotPassword:(UIButton *)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ForgotVC * _vc = (ForgotVC*)[storyBoard instantiateViewControllerWithIdentifier:@"ForgotVC"];
    [self.navigationController pushViewController:_vc animated:YES];
}
- (IBAction)TwiterClicking:(UIButton *)sender {
    
}
- (IBAction)GooglePluseClicking:(UIButton *)sender {
    
}
- (IBAction)FaceBookLogin:(UIButton *)sender {
    
    //
    //    if ([FBSDKAccessToken currentAccessToken]) {
    //    }
    //
    //    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    //    [loginManager logInWithReadPermissions:@[@"public_profile",@"email"]
    //                                   handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
    //                                       NSLog(@"Logged in");
    //                                       [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me?fields=id,name"parameters:@{@"fields": @"first_name, last_name,email,gender,birthday"}]
    //                                        startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
    //                                            if (!error) {
    //                                                NSLog(@"fetched user:%@", result);
    //                                                Istype=result;
    //                                                FBMail=[result objectForKey:@"email"];
    //                                            }
    //                                        }];
    //                                       [FBRequestConnection startForMeWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
    //                                           if (!error) {
    //                                               NSLog(@"%@",[NSString stringWithFormat:@"user info: %@", result]);
    //                                           }
    //                                       }];
    //                                   }];
    
}

#pragma mark- TextField Delegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if (textField== m_PasswordField) {
        textField.returnKeyType = UIReturnKeyDone;
    } else {
        textField.returnKeyType = UIReturnKeyNext;
    }
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [m_KeyboarsScrollView setContentOffset:scrollPoint animated:YES];
    
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    if(textField.returnKeyType==UIReturnKeyNext) {
        UIResponder *next = [textField.superview viewWithTag:textField.tag+1];
        if (next) {
            [next becomeFirstResponder];
        }
    }
    else if (textField.returnKeyType==UIReturnKeyDone) {
        [textField resignFirstResponder];
    }
    return YES;
}
-(void)dismissKeyboard {
    
    [m_EmailIdField resignFirstResponder];
    [m_PasswordField resignFirstResponder];
    
}
-(void)TextFiledDelegateSet{
    m_EmailIdField.delegate=self;
    m_PasswordField.delegate=self;
}

@end
