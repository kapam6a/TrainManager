//
//  TMInfoPresenter.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMInfoView.h"
#import "TMInfoInteractorIO.h"

@interface TMInfoPresenter : NSObject<TMInfoPresenter,TMInfoInteractorOutput>

@property(strong, nonatomic) id<TMInfoInteractorInput> interactor;
@property(weak, nonatomic) id<TMInfoView> view;

@end

