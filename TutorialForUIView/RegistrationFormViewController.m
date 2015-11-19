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
#import "LoggedInViewController.h"

@interface RegistrationFormViewController ()

@end

@implementation RegistrationFormViewController

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
    if([segue.identifier isEqualToString:@"AuditVC"]) {
        UITableViewController* vc = [segue destinationViewController];
    }
    else {
        LoggedInViewController* vc = [segue destinationViewController];
    }
    
}


- (NSArray*) retrieveDataFromNSUserDefaults {
    NSMutableArray *objectArray = [NSMutableArray new];
    NSUserDefaults *currentDefaults = [NSUserDefaults standardUserDefaults];
    NSData *dataRepresentingSavedArray = [currentDefaults objectForKey:@"savedArray"];
    if (dataRepresentingSavedArray != nil)
    {
        NSArray *oldSavedArray = [NSKeyedUnarchiver unarchiveObjectWithData: dataRepresentingSavedArray];
        if (oldSavedArray != nil)
            objectArray = [[NSMutableArray alloc] initWithArray:oldSavedArray];
        else
            objectArray = [[NSMutableArray alloc] init];
    }
    return objectArray;
}

- (void)storeDataInNSUserDefaults:(User *)userToStore {
    NSMutableArray *objectArray = [NSMutableArray arrayWithArray:[self
                                                                  retrieveDataFromNSUserDefaults]];
    [objectArray addObject:userToStore];
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver
                                                      archivedDataWithRootObject:objectArray] forKey:@"savedArray"];
}


- (IBAction)SubmitButtonTouched:(id)sender {
    //TODO - Validate User Fields.
    User *user = [[User alloc] init];
    user.FirstName = FirstNameTextField.text;
    user.LastName = LastNameTextField.text;
    user.Email = EmailTextField.text;
    user.Password = PasswordTextField.text;
    [user.DateCreated getDateTime];
    
    NSLog(@"the values are...");
    
    if(user.Email.isValidEmail) {
        NSLog(@"yay email!!");
    }
    UserToLogIn = user;
    
    if([user.Email isEqual: @"master"]) {
        [self performSegueWithIdentifier:@"AuditVC" sender:nil];
    }
    else {
        [self performSegueWithIdentifier:@"LoggedInVC" sender:nil];
    }
}

- (IBAction)ResetButtonTouched:(id)sender {
    FirstNameTextField.text = @"";
    LastNameTextField.text = @"";
    EmailTextField.text = @"";
    VerifyPasswordTextField.text = @"";
    PasswordTextField.text = @"";
}

@end