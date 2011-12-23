//
//  touchMotionAppDelegate.h
//  touchMotion
//
//  Created by Jim West on 12/23/11.
//  Copyright (c) 2011 WestWorld. All rights reserved.
//

#import <UIKit/UIKit.h>

@class touchMotionViewController;

@interface touchMotionAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) touchMotionViewController *viewController;

@end
