//
//  TMInfoInteractorIO.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMInfoInteractorInput <NSObject>

-(void)requestWithData:(id)data;

@end

@protocol TMInfoInteractorOutput <NSObject>

-(void)sendCity:(id)city;

@end