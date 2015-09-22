//
//  LoggedInViewController.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "LoggedInViewController.h"

@interface LoggedInViewController ()

@end

@implementation LoggedInViewController

@synthesize WelcomeLabel, loggedInUser;

- (void)viewDidLoad {
    [super viewDidLoad];
    WelcomeLabel.text = [NSString stringWithFormat:@"%@/%@/%@", loggedInUser.FirstName,
                         loggedInUser.LastName, loggedInUser.Email];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    HomeViewController* vc = [segue destinationViewController];
    User *user = [[User alloc] init];
    vc.UserToLogIn = user; //clears logged in user.
}

- (IBAction)LogOutButton:(id)sender {
    [self performSegueWithIdentifier:@"HomeVC" sender:nil];
}

@end
