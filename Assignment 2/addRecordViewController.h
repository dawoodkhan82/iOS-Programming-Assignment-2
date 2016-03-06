//
//  addRecordViewController.h
//  Assignment 2
//
//  Created by Dawood Khan on 3/5/16.
//  Copyright © 2016 Dawood Khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface addRecordViewController : UIViewController{
    NSMutableArray *users;
}


@property (strong, nonatomic) IBOutlet UITextField *websiteEnter;
@property (strong, nonatomic) IBOutlet UITextField *usernameEnter;
@property (strong, nonatomic) IBOutlet UITextField *passwordEnter;
@property (strong, nonatomic) IBOutlet UITextField *countEnter;

@end
