//
//  ConfirmVC.h
//  HireMile
//
//  Created by abc on 08/10/17.
//  Copyright © 2017 abc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"
@class TPKeyboardAvoidingScrollView;

@interface ConfirmVC : UIViewController <UITextFieldDelegate>
{   IBOutlet UITextField *m_pc1;
    IBOutlet UITextField *m_pc2;
    IBOutlet UITextField *m_pc3;
    IBOutlet UITextField *m_pc4;
    IBOutlet UITextField *m_pc5;
}
@property(nonatomic,retain)  IBOutlet TPKeyboardAvoidingScrollView * m_KeyboarsScrollView;

@end
