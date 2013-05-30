//
//  AppDelegate.m
//  AuthLinkingTest
//
//  Created by Daniel Tull on 30/05/2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "AppDelegate.h"
#import <DCTAuth/DCTAuth.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];

	
	DCTAuthRequest *request = [[DCTAuthRequest alloc] initWithRequestMethod:DCTAuthRequestMethodGET URL:[NSURL URLWithString:@"http://danieltull.co.uk"] parameters:nil];
	[request performRequestWithHandler:^(DCTAuthResponse *response, NSError *error) {
		NSLog(@"%@:%@ %@", self, NSStringFromSelector(_cmd), response);
	}];

    return YES;
}

@end
