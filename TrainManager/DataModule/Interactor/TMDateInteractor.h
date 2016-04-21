//
//  TMDateInteractor.h
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TMDateInteractorIO.h"

@interface TMDateInteractor : NSObject<TMDateInteractorInput>

@property(weak, nonatomic) id<TMDateInteractorOutput> presenter;

@end
