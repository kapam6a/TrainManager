//
//  TMDateRouter.h
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMDateRouterIO.h"

@interface TMDateRouter : NSObject <TMDateRouterInput>

@property (weak, nonatomic) id<TMDateTransitionHandler> transitionHandler;

@end
