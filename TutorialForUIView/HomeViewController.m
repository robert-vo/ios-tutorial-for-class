//
//  HomeViewController.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize FirstNameTextField, LastNameTextField, EmailTextField, PasswordTextField, VerifyPasswordTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)FirstNameFieldTouched:(id)sender {
    FirstNameTextField.text = @"";
    
}

- (IBAction)ResetButtonTouched:(id)sender {
    FirstNameTextField.text = @"";
    LastNameTextField.text = @"";
    EmailTextField.text = @"";
    VerifyPasswordTextField.text = @"";
    PasswordTextField.text = @"";
}
@end