//
//  SignupVC.h
//  HireMile
//
//  Created by abc on 05/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"
@class TPKeyboardAvoidingScrollView;


@interface SignupVC : UIViewController<UITextFieldDelegate>
{
    
IBOutlet UITextField *m_FirstNameField;
IBOutlet UITextField *m_LastNameField;
IBOutlet UITextField * m_EmailField;
IBOutlet UITextField * m_PassField;
IBOutlet UITextField * m_ConfirmPassField;
IBOutlet UIButton *m_Login;
  
}
@property(nonatomic,retain)  IBOutlet TPKeyboardAvoidingScrollView * m_KeyboarsScrollView;

@end
