//
//  TMRouterI.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMCitiesListRouterInput <NSObject>

-(void)didSelectRowWithData:(id)data;
-(void)didPressDateButton;

@end

@protocol TMCitiesListTransitionHandler <NSObject>

-(void)openNewModuleWithSegueID:(NSString*)identifier withData:(id)data;

@end