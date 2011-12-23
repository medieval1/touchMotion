//
//  touchMotionViewController.h
//  touchMotion
//
//  Created by Jim West on 12/23/11.
//  Copyright (c) 2011 WestWorld. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface touchMotionViewController : UIViewController
{
    UILabel *xCoord;
    UILabel *yCoord;
    CGPoint startPoint;
}

@property (strong, nonatomic) IBOutlet UILabel *xCoord;
@property (strong, nonatomic) IBOutlet UILabel *yCoord;
@property CGPoint startPoint;

@end
