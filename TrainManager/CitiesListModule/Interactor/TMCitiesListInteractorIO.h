//
//  TMInteractorIO.h
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMCitiesListInteractorInput <NSObject>

-(void)requestCitiesFrom;
-(void)requestCitiesTo;
-(void)requestCitiesFromWithNameContains:(NSString*)string;
-(void)requestCitiesToWithNameContains:(NSString*)string;

@end

@protocol TMCitiesListInteractorOutput <NSObject>

-(void)sendCitiesFrom:(NSArray*)citiesFrom;
-(void)sendCitiesTo:(NSArray*)citiesTo;

@end
