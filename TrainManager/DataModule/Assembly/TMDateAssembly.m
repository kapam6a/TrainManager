//
//  TMDateAssembly.m
//  TrainManager
//
//  Created by Kapam6a on 20.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMDateAssembly.h"
#import "TMDateViewController.h"
#import "TMDatePresenter.h"
#import "TMDateInteractor.h"
#import "TMDateRouter.h"

@implementation TMDateAssembly

-(TMDateViewController *)dateViewController
{
    return [TyphoonDefinition withClass:[TMDateViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(presenter) with:[self datePresenter]];
    }];
}

-(TMDatePresenter *)datePresenter
{
    return [TyphoonDefinition withClass:[TMDatePresenter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(view) with:[self dateViewController]];
        [definition injectProperty:@selector(interactor) with:[self dateInteractor]];
        [definition injectProperty:@selector(router) with:[self dateRouter]];
        [definition injectProperty:@selector(sourcePresenter)];
    }];
}

-(TMDateInteractor *)dateInteractor
{
    return [TyphoonDefinition withClass:[TMDateInteractor class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(presenter) with:[self datePresenter]];
    }];
}

-(TMDateRouter *)dateRouter
{
    return [TyphoonDefinition withClass:[TMDateRouter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(transitionHandler) with:[self dateViewController]];
    }];
}

@end
