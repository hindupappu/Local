//
//  FoodCourtViewController.m
//  FoodCourt
//
//  Created by hindupappu on 3/14/14.
//  Copyright (c) 2014 hindupappu. All rights reserved.
//

#import "FoodCourtViewController.h"

@interface FoodCourtViewController ()

@end

@implementation FoodCourtViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    foodCourtButton.backgroundColor = [UIColor redColor];
    [self blinkOn:foodCourtButton];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)foodCourtButtonClicked:(id)sender
{
    UIAlertView *displayAlert = [[UIAlertView alloc]initWithTitle:@"SystemResponse can be text to speech also" message:@"WOW..." delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [displayAlert show];
}

-(IBAction)needToBeImplemented:(id)sender
{
    //Instead of alert syestem response can be a sound "wow..."(using text to speech")
    UIAlertView *toBeImplemented = [[UIAlertView alloc]initWithTitle:@"SystemResponse" message:@"To Be Implemented" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [toBeImplemented show];
}

- (void)blinkOff:(UIButton *)v
{
    [UIButton animateWithDuration:.2 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        foodCourtButton.alpha = .01;  //don't animate alpha to 0, otherwise you won't be able to interact with it
    } completion:^(BOOL finished) {
        [self blinkOn:foodCourtButton];
    }];
}

- (void)blinkOn:(UIButton *)v
{
    [UIButton animateWithDuration:.2 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^ {
        foodCourtButton.alpha = 1;
    } completion:^(BOOL finished) {
        [self blinkOff:foodCourtButton];
    }];
}

@end
