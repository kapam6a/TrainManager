//
//  TMPresenter.m
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMCitiesListPresenter.h"

@interface TMCitiesListPresenter ()

@property(strong, nonatomic) NSArray *citiesFrom;
@property(strong, nonatomic) NSArray *citiesTo;

@end

@implementation TMCitiesListPresenter

#pragma mark - TMCitiesListPresenter

-(void)didSelectSearchBarCitiesFrom
{
    [self.interactor requestCitiesFrom];
    [self.view showIndicator];
}

-(void)didSelectSearchBarCitiesTo
{
    [self.interactor requestCitiesTo];
    [self.view showIndicator];
}

-(void)didSelectSearchBarCitiesFromWithFieldContains:(NSString *)string
{
    [self.interactor requestCitiesFromWithNameContains:string];
}

-(void)didSelectSearchBarCitiesToWithFieldContains:(NSString *)string
{
    [self.interactor requestCitiesToWithNameContains:string];
}

-(void)didSelectRowWithData:(id)data
{
    [self.router didSelectRowWithData:(id)data];
}

-(void)didPressDateButton
{
    [self.router didPressDateButton];
}

#pragma mark - TMCitiesListInteractorOutput

-(void)sendCitiesFrom:(NSArray*)citiesFrom
{
    [self.view showCitiesFrom:citiesFrom];
    [self.view hideIndicator];
}

-(void)sendCitiesTo:(NSArray*)citiesTo
{
    [self.view showCitiesTo:citiesTo];
    [self.view hideIndicator];
}

#pragma mark - TMCitiesListPresenterModuleInput

-(void)getDate:(NSDate *)date
{
    [self.view showDate:date];
}


@end
