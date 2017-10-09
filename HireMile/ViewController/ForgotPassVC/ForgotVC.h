//
//  ForgotVC.h
//  HireMile
//
//  Created by abc on 08/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"
@class TPKeyboardAvoidingScrollView;

@interface ForgotVC : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *m_EmailIdField;
}

    @property(nonatomic,retain)  IBOutlet TPKeyboardAvoidingScrollView * m_KeyboarsScrollView;


@end
