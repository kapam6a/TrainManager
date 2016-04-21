//
//  TMInteractor.m
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMCitiesListInteractor.h"
#import "TMRequest.h"

@interface TMCitiesListInteractor ()

@property(strong, nonatomic) NSArray *citiesFrom;
@property(strong, nonatomic) NSArray *citiesTo;

@end

@implementation TMCitiesListInteractor

#pragma mark - TMCitiesListInteractorInput

-(void)requestCitiesFrom
{
    if(self.citiesFrom){
        [self.presenter sendCitiesFrom:self.citiesFrom];
    } else{
        [self sendCitiesFrom];
    }
}

-(void)requestCitiesTo
{
    if(self.citiesTo){
        [self.presenter sendCitiesTo:self.citiesTo];
    } else{
        [self sendCitiesTo];
    }
}

-(void)requestCitiesFromWithNameContains:(NSString*)string
{
    if (![string isEqualToString:@""]) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cityTitle CONTAINS[c] %@", string];
        NSArray *sortedArray = [self.citiesFrom filteredArrayUsingPredicate:predicate];
        [self.presenter sendCitiesFrom:sortedArray];
    }
    else{
        [self.presenter sendCitiesFrom:self.citiesFrom];
    }
}

-(void)requestCitiesToWithNameContains:(NSString*)string
{
    if (![string isEqualToString:@""]) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cityTitle CONTAINS[c] %@", string];
        NSArray *sortedArray = [self.citiesTo filteredArrayUsingPredicate:predicate];
        [self.presenter sendCitiesTo:sortedArray];
    }
    else{
        [self.presenter sendCitiesTo:self.citiesTo];
    }
}

-(void)sendCitiesFrom
{
    __weak typeof(self) weakSelf = self;
    [[TMRequest sharedRequest] fetchCitiesWithSuccess:^(NSArray *citiesFrom, NSArray *citiesTo) {
        [weakSelf.presenter sendCitiesFrom:citiesFrom];
        weakSelf.citiesFrom = citiesFrom;
    } andFail:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

-(void)sendCitiesTo
{
    __weak typeof(self) weakSelf = self;
    [[TMRequest sharedRequest] fetchCitiesWithSuccess:^(NSArray *citiesFrom, NSArray *citiesTo) {
        [weakSelf.presenter sendCitiesTo:citiesTo];
        weakSelf.citiesTo = citiesTo;
    } andFail:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

@end
