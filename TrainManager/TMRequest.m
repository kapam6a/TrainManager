//
//  TMRequest.m
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMRequest.h"
#import "AFNetworking.h"

@implementation TMRequest

+(TMRequest *)sharedRequest
{
    static TMRequest *request = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        request = [[TMRequest alloc] init];
    });
    return request;
}

-(void)fetchCitiesWithSuccess:(SuccessBlock)success
                      andFail:(FailBlock)fail
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    NSURL *URL = [NSURL URLWithString:@"https://raw.githubusercontent.com/tutu-ru/hire_ios-test/master/allStations.json"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            fail(error);
        } else {
            success([self parseDataForCitiesFrom:responseObject], [self parseDataForCitiesTo:responseObject]);
        }
    }];
    [dataTask resume];
}

-(NSArray*) parseData:(NSData*)data
{
    NSArray *arrayForSorting = [[self parseDataForCitiesFrom:data] arrayByAddingObjectsFromArray:[self parseDataForCitiesTo:data]];
    return [self sortArray:arrayForSorting];
}

-(NSArray*) sortArray:(NSArray*)array
{
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"cityTitle" ascending:YES];
    return [array sortedArrayUsingDescriptors:@[sort]];
}

-(NSArray*) parseDataForCitiesFrom:(NSData*)data
{
    NSError *error;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                         options:0
                                                           error:&error];
    NSMutableArray *citiesFrom = [[NSMutableArray alloc] init];
    for (NSDictionary *i in [json valueForKey:@"citiesFrom"]) {
        [citiesFrom addObject:i];
    }
    return [self sortArray:citiesFrom];
}

-(NSArray*) parseDataForCitiesTo:(NSData*)data
{
    NSError *error;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                         options:0
                                                           error:&error];
    NSMutableArray *citiesTo = [[NSMutableArray alloc] init];
    for (NSDictionary *i in [json valueForKey:@"citiesTo"]) {
        [citiesTo addObject:i];
    }
    return [self sortArray:citiesTo];
}

@end
