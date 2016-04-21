//
//  TMInfoPresenter.m
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMInfoPresenter.h"

@implementation TMInfoPresenter

#pragma mark - TMInfoPresenter

-(void)updateViewWithData:(id)data
{
    [self.interactor requestWithData:data];
}

#pragma mark - TMInfoInteractorOutput

-(void)sendCity:(id)city
{
    [self.view showInfoForCity:city];
}

@end
