//
//  TMDatePresenter.m
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMDatePresenter.h"

@interface TMDatePresenter ()

@property (strong, nonatomic) NSDate *currentDate;

@end

@implementation TMDatePresenter

#pragma mark - TMDatePresenter

-(void)didPressDoneButtonWithDate:(NSDate *)date
{
    [self.router dismissViewController];
    [self.sourcePresenter getDate:date];
}

-(void)didPressCancelButton
{
    [self.router dismissViewController];
}

@end
