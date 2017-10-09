//
//  ForgotVC.m
//  HireMile
//
//  Created by abc on 08/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import "ForgotVC.h"
#import "ConfirmVC.h"

@interface ForgotVC ()

@end

@implementation ForgotVC
@synthesize m_KeyboarsScrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)BackClicking:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(IBAction)NextClicking:(id)sender{
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ConfirmVC * _vc = (ConfirmVC*)[storyBoard instantiateViewControllerWithIdentifier:@"ConfirmVC"];
    [self.navigationController pushViewController:_vc animated:YES];
}
#pragma mark- TextField Delegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if (textField== m_EmailIdField) {
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
    
}
-(void)TextFiledDelegateSet{
    m_EmailIdField.delegate=self;
  
}
@end
