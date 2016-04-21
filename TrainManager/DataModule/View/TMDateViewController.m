//
//  TMDateViewController.m
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMDateViewController.h"

@implementation TMDateViewController

#pragma mark - IBAction

- (IBAction)doneButtonAction:(id)sender
{
    [self.presenter didPressDoneButtonWithDate:self.datePicker.date];
}

- (IBAction)cancelButtonAction:(id)sender
{
    [self.presenter didPressCancelButton];
}

#pragma mark - TMDateTransitionHandler

-(void)dismissViewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
