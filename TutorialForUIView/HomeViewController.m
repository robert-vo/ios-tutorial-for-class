//
//  HomeViewController.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "HomeViewController.h"
#import "User.h"
#import "NSString+Utilities.h"
#import "LoggedInViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize FirstNameTextField, LastNameTextField, EmailTextField, PasswordTextField, VerifyPasswordTextField, UserToLogIn;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    LoggedInViewController* vc = [segue destinationViewController];
    vc.loggedInUser = UserToLogIn;
    
}


- (IBAction)SubmitButtonTouched:(id)sender {
    //TODO - Validate User Fields.
    User *user = [[User alloc] init];
    user.FirstName = FirstNameTextField.text;
    user.LastName = LastNameTextField.text;
    user.Email = EmailTextField.text;
    user.Password = PasswordTextField.text;
    NSLog(@"the values are...");
    
    if(user.Email.isValidEmail) {
        NSLog(@"yay email!!");
    }
    UserToLogIn = user;
    [self performSegueWithIdentifier:@"LoggedInVC" sender:nil];

}

- (IBAction)PasswordTextFieldTouched:(id)sender {
    [PasswordTextField setSecureTextEntry:YES];
    //PasswordTextField.text = @"";
}

- (IBAction)VerifyPasswordTextFieldTouched:(id)sender {
    [VerifyPasswordTextField setSecureTextEntry:YES];
    //VerifyPasswordTextField.text = @"";

}

- (IBAction)ResetButtonTouched:(id)sender {
    FirstNameTextField.text = @"";
    LastNameTextField.text = @"";
    EmailTextField.text = @"";
    VerifyPasswordTextField.text = @"";
    PasswordTextField.text = @"";
}

@end