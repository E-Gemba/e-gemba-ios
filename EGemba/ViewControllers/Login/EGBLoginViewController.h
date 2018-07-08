//
//  EGBLoginViewController.h
//  EGemba
//
//  Created by edi s on 08/07/18.
//  Copyright © 2018 egemba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JVFloatLabeledTextField/JVFloatLabeledTextField.h>

@interface EGBLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField *usernameTextField;
@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField *passwordTextField;

@end
