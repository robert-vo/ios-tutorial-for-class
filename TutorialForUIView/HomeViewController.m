//
//  HomeViewController.m
//  TutorialForUIView
//
//  Created by Robert Vo on 11/19/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "HomeViewController.h"
#import "NSArray+Utilities.h"
#import "NSString+Utilities.h"
#import "LoggedInViewController.h"
#import "User.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize PasswordTextField, EmailTextField, userToPass;

- (void)viewDidLoad {
    [super viewDidLoad];
    EmailTextField.text = @"email@email.com";
    PasswordTextField.text = @"123";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"LoggedInVC"]) {
        LoggedInViewController *vc = [segue destinationViewController];
        vc.loggedInUser = userToPass;
    }
}


- (IBAction)LoginButton:(id)sender {
    NSArray *dataFromUserDefaults = [NSArray retrieveDataFromNSUserDefaults];
    for(User *user in dataFromUserDefaults) {
        if([EmailTextField.text isEqualToString:user.Email] && [PasswordTextField.text isEqualToString:user.Password] ) {
            userToPass = user;
            [self performSegueWithIdentifier:@"LoggedInVC" sender:self];
        }
    }
    [self displayUserNotFound];
}

- (void) displayUserNotFound {
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:@"User not found!"
                                message:@"Hey there! We couldn't find your email/password. Try again!"
                                preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okayButton = [UIAlertAction
                                 actionWithTitle:@"Okay 🙃"
                                 style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction * action)
                                 {
                                     [alert dismissViewControllerAnimated:YES completion:nil];
                                 }];
    [alert addAction:okayButton];
    [self presentViewController:alert animated:YES completion:nil];
}

@end

