//
//  TMInfoView.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMInfoView <NSObject>

-(void)showInfoForCity:(id)city;

@end

@protocol TMInfoPresenter <NSObject>

-(void)updateViewWithData:(id)data;

@end


