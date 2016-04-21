//
//  TMDatePresenter.h
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMDateInteractorIO.h"
#import "TMDateView.h"
#import "TMDateRouterIO.h"
#import "TMCitiesListModuleInput.h"

@interface TMDatePresenter : NSObject<TMDateInteractorOutput,TMDatePresenter>

@property (weak, nonatomic) id<TMDateView> view;
@property (strong, nonatomic) id<TMDateInteractorInput> interactor;
@property (strong, nonatomic) id<TMDateRouterInput> router;
@property (strong, nonatomic) id<TMCitiesListPresenterModuleInput> sourcePresenter;

@end