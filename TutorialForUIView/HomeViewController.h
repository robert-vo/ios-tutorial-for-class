//
//  HomeViewController.h
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *FirstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *LastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
@property (weak, nonatomic) IBOutlet UITextField *VerifyPasswordTextField;
@property (weak, nonatomic) IBOutlet UIButton *SubmitButton;
@property (weak, nonatomic) IBOutlet UIButton *ResetButton;
- (IBAction)FirstNameFieldTouched:(id)sender;
- (IBAction)ResetButtonTouched:(id)sender;
- (IBAction)LastNameFieldTouched:(id)sender;
- (IBAction)EmailFieldTouched:(id)sender;
- (IBAction)VerifyPasswordFieldTouched:(id)sender;
- (IBAction)PasswordFieldTouched:(id)sender;
- (IBAction)SubmitButtonTouched:(id)sender;

@end
