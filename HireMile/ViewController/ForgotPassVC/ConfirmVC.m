//
//  ConfirmVC.m
//  HireMile
//
//  Created by abc on 08/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import "ConfirmVC.h"
#define MAX_LENGTH 1

@interface ConfirmVC ()
{
    
}
@end

@implementation ConfirmVC
@synthesize m_KeyboarsScrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
    m_pc1.delegate = self;
    m_pc2.delegate = self;
     m_pc3.delegate = self;
     m_pc4.delegate = self;
     m_pc5.delegate = self;
    //[self TextFiledDelegateSet];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

#pragma mark- TextField Delegate

- (void)textFieldDidBeginEditing:(UITextField *)textField {

        textField.returnKeyType = UIReturnKeyDone;
    
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [m_KeyboarsScrollView setContentOffset:scrollPoint animated:YES];
    
}



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    for (int i = 0; i < [string length]; i++) {
        unichar c = [string characterAtIndex:i];
        if (![myCharSet characterIsMember:c]) {
            return NO;
        }
    }
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    return (newLength > 1) ? NO : YES;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
  UIResponder *next = [textField.superview viewWithTag:textField.tag+1];
    
            if (next) {
                [next becomeFirstResponder];
                if (textField == m_pc1) {
                     [m_pc1 resignFirstResponder];
                    [m_pc2 becomeFirstResponder];
                }else if (textField == m_pc2) {
                     [m_pc2 resignFirstResponder];
                    [m_pc3 becomeFirstResponder];
                }else if (textField == m_pc3) {
                     [m_pc3 resignFirstResponder];
                    [m_pc4 becomeFirstResponder];
                }else if (textField == m_pc4) {
                     [m_pc4 resignFirstResponder];
                  
                }
            }
            else{
                
        }

    
    return YES;
}
//-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//{
//
//    NSLog(@"%@",NSStringFromRange(range));
//
//    // Only the 16 digits + 3 spaces
//    if (range.location == 5) {
//        return NO;
//    }
//
//    // Backspace
//    if ([string length] == 0)
//        return YES;
//
//    if ((range.location == 1) || (range.location == 2) || (range.location == 3))
//    {
//
//        NSString *str    = [NSString stringWithFormat:@"%@ ",textField.text];
//        textField.text   = str;
//    }
//
//    return YES;
//}

@end
