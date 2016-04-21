//
//  TMDateView.h
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TMDateView <NSObject>

@end


@protocol TMDatePresenter <NSObject>

-(void)didPressDoneButtonWithDate:(NSDate*)date;
-(void)didPressCancelButton;

@end
