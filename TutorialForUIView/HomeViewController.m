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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    HomeViewController* vc = [segue destinationViewController];
    //vc.EmailTextField.text = EmailTextField.text;
    
    //vc.bookData = selectedBook;
}


- (IBAction)SubmitButtonTouched:(id)sender {
    //TODO - Validate User Fields.
    User *user = [[User alloc] init];
    user.FirstName = FirstNameTextField.text;
    user.LastName = LastNameTextField.text;
    user.Email = EmailTextField.text;
    user.Password = PasswordTextField.text;
    NSLog(@"the values are...");
    
    [self performSegueWithIdentifier:@"LoggedInVC" sender:nil];

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