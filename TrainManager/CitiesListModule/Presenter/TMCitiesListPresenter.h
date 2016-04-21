//
//  TMPresenter.h
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMCitiesListInteractorIO.h"
#import "TMCitiesListView.h"
#import "TMCitiesListRouterIO.h"
#import "TMCitiesListModuleInput.h"

@interface TMCitiesListPresenter : NSObject<TMCitiesListInteractorOutput,TMCitiesListPresenter,TMCitiesListPresenterModuleInput>

@property (weak, nonatomic) id<TMCitiesListView> view;
@property (strong, nonatomic) id<TMCitiesListInteractorInput> interactor;
@property (strong, nonatomic) id<TMCitiesListRouterInput> router;

@end
