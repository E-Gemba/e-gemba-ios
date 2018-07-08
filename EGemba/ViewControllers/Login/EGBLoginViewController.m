//
//  EGBLoginViewController.m
//  EGemba
//
//  Created by edi s on 08/07/18.
//  Copyright © 2018 egemba. All rights reserved.
//

#import "EGBLoginViewController.h"
#import "UITextField+Underline.h"

@interface EGBLoginViewController ()

@end

@implementation EGBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupLoginForms];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupLoginForms
{
    [self.usernameTextField setupUnderline];
    [self.usernameTextField setPlaceholder:@"Username" floatingTitle:@"Username"];
    [self.passwordTextField setupUnderline];
    [self.passwordTextField setPlaceholder:@"Password" floatingTitle:@"Password"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
