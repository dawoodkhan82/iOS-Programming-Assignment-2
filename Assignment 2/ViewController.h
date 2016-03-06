//
//  ViewController.h
//  Assignment 2
//
//  Created by Dawood Khan on 3/2/16.
//  Copyright © 2016 Dawood Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    NSMutableArray *users;
}

@property (strong, nonatomic) IBOutlet UITextField *websiteText;
@property (strong, nonatomic) IBOutlet UITextField *usernameText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
@property (strong, nonatomic) IBOutlet UITextField *countText;
@property (strong, nonatomic) IBOutlet UIButton *forwardButton;
@property (strong, nonatomic) IBOutlet UIButton *backwardButton;
@property(nonatomic,retain)NSMutableArray *users;
@property (strong, nonatomic) IBOutlet UISlider *sliderValue;


@end

