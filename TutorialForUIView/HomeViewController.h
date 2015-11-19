//
//  HomeViewController.h
//  TutorialForUIView
//
//  Created by Robert Vo on 11/19/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
- (IBAction)LoginButton:(id)sender;

@end
