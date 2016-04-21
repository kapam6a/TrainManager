//
//  TMInfoInteractor.m
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMInfoInteractor.h"
#import "TMRequest.h"

NSString *const KeyForObjectInCityDictionaryInfoInteractor = @"cityId";

@implementation TMInfoInteractor

#pragma mark - TMInfoInteractorInput

-(void)requestWithData:(id)data
{
    [self requestInfoFor:data];
}

-(void)requestInfoFor:(id)data
{
    NSDictionary *city = data;
    NSString *cityId = [city objectForKey:KeyForObjectInCityDictionaryInfoInteractor];
    __weak typeof(self) weakSelf = self;
    [[TMRequest sharedRequest] fetchCitiesWithSuccess:^(NSArray *citiesFrom, NSArray *citiesTo) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cityId = %@", cityId];
        NSArray *sortedArray = [[citiesFrom arrayByAddingObjectsFromArray:citiesTo] filteredArrayUsingPredicate:predicate];
        [weakSelf.presenter sendCity:[sortedArray objectAtIndex:0]];
    } andFail:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

@end
