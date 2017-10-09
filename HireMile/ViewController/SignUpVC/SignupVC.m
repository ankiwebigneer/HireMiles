//
//  SignupVC.m
//  HireMile
//
//  Created by abc on 05/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import "SignupVC.h"
#import "ViewController.h"

@interface SignupVC ()

@end

@implementation SignupVC
@synthesize m_KeyboarsScrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self TextFiledDelegateSet];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}
#pragma mark - IBaction
- (IBAction)LoginClicking:(UIButton *)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController * _vc = (ViewController*)[storyBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:_vc animated:YES];
}
- (IBAction)GetstartClicking:(UIButton *)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController * _vc = (ViewController*)[storyBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:_vc animated:YES];
}
#pragma mark- TextField Delegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if (textField== m_ConfirmPassField) {
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
    
    [m_ConfirmPassField resignFirstResponder];
    [m_PassField resignFirstResponder];
    [m_FirstNameField resignFirstResponder];
    [m_LastNameField resignFirstResponder];
    [m_EmailField resignFirstResponder];
  
    
}
-(void)TextFiledDelegateSet{
    m_FirstNameField.delegate=self;
    m_LastNameField.delegate=self;
    m_EmailField.delegate=self;
    m_PassField.delegate=self;
    m_ConfirmPassField.delegate=self;
}


@end
