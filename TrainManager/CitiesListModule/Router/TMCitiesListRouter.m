//
//  TMRouter.m
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMCitiesListRouter.h"

NSString *const segueIdForInfoControllerCitiesListRouter = @"InfoControllerIdentifier";
NSString *const segueIdForDateControllerCitiesListRouter = @"DateControllerIdentifier";

@implementation TMCitiesListRouter

#pragma mark - TMCitiesListRouterInput

-(void)didSelectRowWithData:(id)data
{
    [self.transitionHandler openNewModuleWithSegueID:segueIdForInfoControllerCitiesListRouter withData:data];
}

-(void)didPressDateButton
{
    [self.transitionHandler openNewModuleWithSegueID:segueIdForDateControllerCitiesListRouter withData:nil];
}

@end
