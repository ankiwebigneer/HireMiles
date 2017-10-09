//
//  ViewController.h
//  HireMile
//
//  Created by abc on 02/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"
@class TPKeyboardAvoidingScrollView;

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *m_EmailIdField;
    IBOutlet UITextField *m_PasswordField;
    IBOutlet UIButton *m_loginBtn;
    IBOutlet UIButton *m_FbBtn;
    IBOutlet UIButton *m_TwitterBtn;
    IBOutlet UIButton *m_GoogleBtn;
}
@property(nonatomic,retain)  IBOutlet TPKeyboardAvoidingScrollView * m_KeyboarsScrollView;

@end

