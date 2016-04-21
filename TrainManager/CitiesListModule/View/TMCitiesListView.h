//
//  TMView.h
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMCitiesListView <NSObject>

-(void)showCitiesFrom:(NSArray*)citiesFrom;
-(void)showCitiesTo:(NSArray*)citiesTo;
-(void)showIndicator;
-(void)hideIndicator;
-(void)showDate:(NSDate*)date;

@end


@protocol TMCitiesListPresenter <NSObject>

-(void)didSelectSearchBarCitiesFrom;
-(void)didSelectSearchBarCitiesTo;
-(void)didSelectSearchBarCitiesFromWithFieldContains:(NSString*)string;
-(void)didSelectSearchBarCitiesToWithFieldContains:(NSString*)string;
-(void)didSelectRowWithData:(id)data;
-(void)didPressDateButton;

@end
