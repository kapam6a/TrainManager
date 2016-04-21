//
//  TMDateRouterIO.h
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMDateRouterInput <NSObject>

-(void)dismissViewController;

@end

@protocol TMDateTransitionHandler <NSObject>

-(void)dismissViewController;

@end