//
//  Oct3AppDelegate.m
//  Oct3
//
//  Created by Michael Gradilone on 9/26/13.
//  Copyright (c) 2013 FinTechSolutions. All rights reserved.
//

#import "Oct3AppDelegate.h"

@implementation Oct3AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    int i = 10;
    NSLog(@"The value of i = %d", i);
    
    UIDevice *device = [UIDevice currentDevice];
    NSString *version = device.systemVersion;
    NSString *deviceName = device.systemName;
    
    // device batterylevel!
    // doesnt really work on the simulator.. :(
    NSLog(@"The current device battery level = %f", [device batteryLevel]);
    
    // show versions?
    NSLog(@"System Version is %@ and SystemDevice = %@", version, deviceName);
    
    // get a cgrect for creating a view?
    CGRect b = [[UIScreen mainScreen] bounds];
    
    NSLog(@"The orgin is %f by %f and size are %f by %f", b.origin.x,b.origin.y, b.size.height, b.size.width);
    
    // accelera=ometer? do i need a delegate here?
    //depricated in ios5? 
    //UIAccelerometer *a = [UIAccelerometer sharedAccelerometer];
    
    
    
    NSLog(@"System Version is %@ and SystemDevice = %@", version, deviceName);
    
    self.window.backgroundColor = [UIColor yellowColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
