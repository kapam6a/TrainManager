//
//  TMRequest.h
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TMRequest : NSObject

typedef void(^SuccessBlock)(NSArray*, NSArray*);
typedef void(^FailBlock)(NSError*);

+(TMRequest*)sharedRequest;
-(void)fetchCitiesWithSuccess:(SuccessBlock)success
                      andFail:(FailBlock)fail;
@end
