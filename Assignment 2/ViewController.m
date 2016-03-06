//
//  ViewController.m
//  Assignment 2
//
//  Created by Dawood Khan on 3/2/16.
//  Copyright © 2016 Dawood Khan. All rights reserved.

// Sized for iphone 5 and 5s

#import "ViewController.h"
#import "SiteValue.h"

@interface ViewController ()
@end

//NSMutableArray *users;

@implementation ViewController {
    int i;
}

@synthesize websiteText;
@synthesize usernameText;
@synthesize passwordText;
@synthesize countText;
@synthesize forwardButton;
@synthesize backwardButton;
@synthesize users;
@synthesize sliderValue;

int i = -1;

- (IBAction)forward:(id)sender {
    if (i < users.count) {
        SiteValue* s = [users objectAtIndex: i];
        NSString *website = s.website;
        NSString *username = s.username;
        NSString *password = s.password;
        websiteText.text = website;
        usernameText.text = username;
        passwordText.text = password;
        NSString* countString = [NSString stringWithFormat:@"%i", s.count];
        countText.text = countString;
    } else if (i == users.count) {
        forwardButton.userInteractionEnabled = NO;
       [forwardButton setTitleColor:[UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:1.0] forState:UIControlStateNormal];
    }
    i = i+ 1;
    
}

- (IBAction)backward:(id)sender {
    if (i >= 1) {
        i = i- 1;
        SiteValue* s = [users objectAtIndex: i];
        NSString *website = s.website;
        NSString *username = s.username;
        NSString *password = s.password;
        websiteText.text = website;
        usernameText.text = username;
        passwordText.text = password;
        NSString* countString = [NSString stringWithFormat:@"%i", s.count];
        countText.text = countString;
    } else if (i == 0) {
        backwardButton.userInteractionEnabled = NO;
        [backwardButton setTitleColor:[UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:1.0] forState:UIControlStateNormal];
    }
}

- (IBAction)incCount:(id)sender {
    if (i < users.count) {
    SiteValue* s = [users objectAtIndex: i];
    s.count = s.count +1;
    NSString* countString = [NSString stringWithFormat:@"%i", s.count];
    countText.text = countString;
    NSString *website = s.website;
    NSString *username = s.username;
    NSString *password = s.password;
    websiteText.text = website;
    usernameText.text = username;
    passwordText.text = password;
    }
}

- (IBAction)slider:(id)sender {
    sliderValue.minimumValue = 0.0;
    sliderValue.maximumValue = users.count;
//    int sliderNumber = [sliderValue intValue];
    int x = sliderValue.value;
    if (x < users.count) {
        SiteValue* s = [users objectAtIndex: x];
        NSString *website = s.website;
        NSString *username = s.username;
        NSString *password = s.password;
        websiteText.text = website;
        usernameText.text = username;
        passwordText.text = password;
        NSString* countString = [NSString stringWithFormat:@"%i", s.count];
        countText.text = countString;
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
//    self.websiteText.delegate = self;
    //create the mutable array of users (site value objects)
    users = [[NSMutableArray alloc] init];
    
    //Adding SiteValue objects to user array
    SiteValue *user1 = [[SiteValue alloc] init];
    user1.website = @"Gmail";
    user1.username = @"Frankenstein";
    user1.password = @"greenaboutyou";
    user1.count = 0;
    [users addObject:user1];
    
    SiteValue *user2 = [[SiteValue alloc] init];
    user2.website = @"Yahoo";
    user2.username = @"Dracula";
    user2.password = @"biteoutatheapple";
    user2.count = 0;
    [users addObject:user2];
    
    SiteValue *user3 = [[SiteValue alloc] init];
    user3.website = @"NYU";
    user3.username = @"Wazowski";
    user3.password = @"Sulley1549";
    user3.count = 0;
    [users addObject:user3];

    SiteValue *user4 = [[SiteValue alloc] init];
    user4.website = @"Amazon";
    user4.username = @"Kate Monster";
    user4.password = @"Monstersorri";
    user4.count = 0;
    [users addObject:user4];

    SiteValue *user5 = [[SiteValue alloc] init];
    user5.website = @"AOL";
    user5.username = @"Chocula";
    user5.password = @"bad!!teeth";
    user5.count = 0;
    [users addObject:user5];
    
    SiteValue* s = [users objectAtIndex: i];
    NSString* countString = [NSString stringWithFormat:@"%i", s.count];
    countText.text = countString;
    
    for (SiteValue *s in users)
    {
        NSString *website = s.website;
        NSString *username = s.username;
        NSString *password = s.password;
        int count = s.count;
        NSLog(@"%@", website);
        NSLog(@"%@", username);
        NSLog(@"%@", password);
        NSLog(@"%i", count);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
