//
//  TMDateViewController.h
//  TrainManager
//
//  Created by Kapam6a on 19.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMDateView.h"
#import "TMDateRouterIO.h"

@interface TMDateViewController : UIViewController<TMDateView, TMDateTransitionHandler>
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@property (strong, nonatomic) id<TMDatePresenter> presenter;

@end
