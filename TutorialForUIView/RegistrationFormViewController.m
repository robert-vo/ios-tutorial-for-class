//
//  HomeViewController.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "RegistrationFormViewController.h"
#import "User.h"
#import "NSString+Utilities.h"
#import "NSArray+Utilities.h"
#import "LoggedInViewController.h"

@interface RegistrationFormViewController ()

@end

@implementation RegistrationFormViewController

@synthesize FirstNameTextField, LastNameTextField, EmailTextField, PasswordTextField, VerifyPasswordTextField, userToAdd;

- (void)viewDidLoad {
    FirstNameTextField.text = @"robert";
    LastNameTextField.text = @"lastname";
    EmailTextField.text = @"email@email.com";
    PasswordTextField.text = @"123";
    VerifyPasswordTextField.text = @"123";
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

- (void)storeDataInNSUserDefaults:(User *)userToStore {
    NSMutableArray *objectArray = [NSMutableArray arrayWithArray:[NSArray
                                                                  retrieveDataFromNSUserDefaults]];
    [objectArray addObject:userToStore];
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver
                                                      archivedDataWithRootObject:objectArray] forKey:@"savedArray"];
}


- (IBAction)SubmitButtonTouched:(id)sender {
    if([EmailTextField.text isValidEmail] && PasswordTextField.text == VerifyPasswordTextField.text) {
        User *newUser = [[User alloc] init];
        newUser.FirstName = FirstNameTextField.text;
        newUser.LastName = LastNameTextField.text;
        newUser.Email = EmailTextField.text;
        newUser.Password = PasswordTextField.text;
        [newUser.DateCreated getDateTime];
        [self storeDataInNSUserDefaults:newUser];
        [self performSegueWithIdentifier:@"homeVC" sender:self];
    }
    else {
        //Invalid form.
    }
}

- (IBAction)ResetButtonTouched:(id)sender {
    FirstNameTextField.text = @"";
    LastNameTextField.text = @"";
    EmailTextField.text = @"";
    VerifyPasswordTextField.text = @"";
    PasswordTextField.text = @"";
}

- (IBAction)BackButtonTouched:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end