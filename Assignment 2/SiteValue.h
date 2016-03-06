//
//  SiteValue.h
//  Assignment 2
//
//  Created by Dawood Khan on 3/4/16.
//  Copyright © 2016 Dawood Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject

+(SiteValue*) siteValueWithUsername: (NSString *)username andPassword: (NSString *)password andWebsite: (NSString *)website andCount: (int) count;

@property(nonatomic, retain) NSString *username;
@property(nonatomic, retain) NSString *password;
@property(nonatomic, retain) NSString *website;
@property(nonatomic) int count;

@end
