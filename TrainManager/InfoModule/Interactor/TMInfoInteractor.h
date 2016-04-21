//
//  TMInfoInteractor.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMInfoInteractorIO.h"

@interface TMInfoInteractor : NSObject<TMInfoInteractorInput>

@property(weak, nonatomic) id<TMInfoInteractorOutput> presenter;

@end
