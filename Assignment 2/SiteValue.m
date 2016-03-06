//
//  SiteValue.m
//  Assignment 2
//
//  Created by Dawood Khan on 3/4/16.
//  Copyright © 2016 Dawood Khan. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue
//Defining the three variables
NSString* username;
NSString* password;
NSString* website;
int count;

-(id)initWithUsername: (NSString *)myUsername
          andPassword: (NSString *)myPassword
           andWebsite: (NSString *)myWebsite
             andCount: (int) myCount {
    self = [super init];
    if (self) {
        username = myUsername;
        password = myPassword;
        website = myWebsite;
        count = myCount;
    }
    return self;
}


+(SiteValue*) siteValueWithUsername: (NSString *)username andPassword: (NSString *)password andWebsite: (NSString *)website andCount: (int) count {
    return [[SiteValue alloc]
            initWithUsername: username andPassword: password andWebsite: (NSString *)website andCount: count];
}

@end





