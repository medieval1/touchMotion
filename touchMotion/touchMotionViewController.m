//
//  touchMotionViewController.m
//  touchMotion
//
//  Created by Jim West on 12/23/11.
//  Copyright (c) 2011 WestWorld. All rights reserved.
//

#import "touchMotionViewController.h"

@implementation touchMotionViewController

@synthesize xCoord;
@synthesize yCoord;
@synthesize startPoint;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *theTouch = [touches anyObject];
    
    startPoint = [theTouch locationInView:self.view];
    
    CGFloat x = startPoint.x;
    CGFloat y = startPoint.y;
    
    xCoord.text = [NSString stringWithFormat:@"x = %g", x];
    yCoord.text = [NSString stringWithFormat:@"y = %g", y];
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *theTouch = [touches anyObject];
    
    CGPoint currentPoint = [theTouch locationInView:self.view];
    
    CGFloat x = currentPoint.x;
    CGFloat y = currentPoint.y;
    
    xCoord.text = [NSString stringWithFormat:@"x = %g", x];
    yCoord.text = [NSString stringWithFormat:@"y = %g", y];
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *theTouch = [touches anyObject];
    
    CGPoint endPoint = [theTouch locationInView:self.view];
    
    xCoord.text = [NSString stringWithFormat:@"start = (%g, %g)", startPoint.x, startPoint.y];
    yCoord.text = [NSString stringWithFormat:@"end = (%g, %g)", endPoint.x, endPoint.y];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
