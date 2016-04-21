//
//  TMInteractor.h
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMCitiesListInteractorIO.h"

@interface TMCitiesListInteractor : NSObject<TMCitiesListInteractorInput>

@property(weak, nonatomic) id<TMCitiesListInteractorOutput> presenter;

@end
