//
//  TMRouter.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMCitiesListRouterIO.h"

@interface TMCitiesListRouter : NSObject <TMCitiesListRouterInput>

@property (weak, nonatomic) id<TMCitiesListTransitionHandler> transitionHandler;

@end
