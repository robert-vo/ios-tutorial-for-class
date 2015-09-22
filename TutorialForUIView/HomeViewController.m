//
//  HomeViewController.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "HomeViewController.h"
#import "User.h"

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


- (IBAction)LastNameFieldTouched:(id)sender {
    LastNameTextField.text = @"";
}

- (IBAction)EmailFieldTouched:(id)sender {
    EmailTextField.text = @"";
}

- (IBAction)VerifyPasswordFieldTouched:(id)sender {
    VerifyPasswordTextField.text = @"";
}

- (IBAction)PasswordFieldTouched:(id)sender {
    PasswordTextField.text = @"";
}

- (IBAction)SubmitButtonTouched:(id)sender {
    //TODO - Validate User Fields.
    User *user = [[User alloc] init];
    user.FirstName = FirstNameTextField.text;
    user.LastName = LastNameTextField.text;
    user.Email = EmailTextField.text;
    user.Password = PasswordTextField.text;
    NSLog(@"the values are...");
}

- (IBAction)ResetButtonTouched:(id)sender {
    //TODO - Validate if not default fields.
    FirstNameTextField.text = @"";
    LastNameTextField.text = @"";
    EmailTextField.text = @"";
    VerifyPasswordTextField.text = @"";
    PasswordTextField.text = @"";
}

@end