//
//  TMInfoViewController.h
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMInfoView.h"

@interface TMInfoViewController : UITableViewController<TMInfoView>

@property(strong, nonatomic) id<TMInfoPresenter> presenter;

@end
