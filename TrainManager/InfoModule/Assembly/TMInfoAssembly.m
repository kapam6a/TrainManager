//
//  TMInfoAssembly.m
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMInfoAssembly.h"
#import "TMInfoViewController.h"
#import "TMInfoPresenter.h"
#import "TMInfoInteractor.h"

@implementation TMInfoAssembly

-(TMInfoViewController*)infoViewController
{
    return [TyphoonDefinition withClass:[TMInfoViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(presenter) with:[self infoPresenter]];
    }];
}

-(TMInfoPresenter*)infoPresenter
{
    return [TyphoonDefinition withClass:[TMInfoPresenter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(interactor) with:[self infoInteractor]];
        [definition injectProperty:@selector(view) with:[self infoViewController]];
    }];
}

-(TMInfoInteractor*)infoInteractor
{
    return [TyphoonDefinition withClass:[TMInfoInteractor class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(presenter) with:[self infoPresenter]];
    }];
}

@end
