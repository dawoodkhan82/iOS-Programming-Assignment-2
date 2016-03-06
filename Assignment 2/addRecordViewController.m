//
//  addRecordViewController.m
//  Assignment 2
//
//  Created by Dawood Khan on 3/5/16.
//  Copyright © 2016 Dawood Khan. All rights reserved.
//

#import "addRecordViewController.h"
#import "SiteValue.h"
#import "ViewController.h"

@interface addRecordViewController ()

@end

@implementation addRecordViewController

@synthesize websiteEnter;
@synthesize usernameEnter;
@synthesize passwordEnter;
@synthesize countEnter;


- (IBAction)enterRecord:(id)sender {
    SiteValue *newUser = [[SiteValue alloc] init];
    newUser.website = websiteEnter.text;
    newUser.username = usernameEnter.text;
    newUser.password = passwordEnter.text;
    newUser.count = [countEnter.text intValue];
    [users addObject:newUser];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
