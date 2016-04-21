//
//  ViewController.h
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMCitiesListView.h"
#import "TMCitiesListRouterIO.h"

@interface TMCitiesListViewController : UIViewController<TMCitiesListView, TMCitiesListTransitionHandler>

@property (weak, nonatomic) IBOutlet UISearchBar *fromSearchBar;
@property (weak, nonatomic) IBOutlet UISearchBar *toSearchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIButton *dateButton;

@property (strong, nonatomic) id<TMCitiesListPresenter> presenter;

@end

