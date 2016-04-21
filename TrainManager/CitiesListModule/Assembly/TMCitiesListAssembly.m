//
//  TMCitiesListAssembly.m
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMCitiesListAssembly.h"
#import "TMCitiesListViewController.h"
#import "TMCitiesListPresenter.h"
#import "TMCitiesListInteractor.h"
#import "TMCitiesListRouter.h"

@implementation TMCitiesListAssembly

-(TMCitiesListViewController *)citiesListViewController
{
    return [TyphoonDefinition withClass:[TMCitiesListViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(presenter) with:[self citiesListPresenter]];
    }];
}
            
-(TMCitiesListPresenter*)citiesListPresenter
{
    return [TyphoonDefinition withClass:[TMCitiesListPresenter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(view) with:[self citiesListViewController]];
        [definition injectProperty:@selector(interactor) with:[self citiesListInteractor]];
        [definition injectProperty:@selector(router) with:[self citiesListRouter]];
        definition.scope = TyphoonScopeWeakSingleton;
    }];
}

-(TMCitiesListInteractor*)citiesListInteractor
{
    return [TyphoonDefinition withClass:[TMCitiesListInteractor class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(presenter) with:[self citiesListPresenter]];
    }];
}

-(TMCitiesListRouter*)citiesListRouter
{
    return [TyphoonDefinition withClass:[TMCitiesListRouter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(transitionHandler) with:[self citiesListViewController]];
    }];
}

@end
