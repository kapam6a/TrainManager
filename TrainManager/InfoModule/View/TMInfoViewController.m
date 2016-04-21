//
//  TMInfoViewController.m
//  TrainManager
//
//  Created by Kapam6a on 18.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMInfoViewController.h"
#import "UIViewController+DataProperty.h"

NSString* const CellIdentifierInfoViewController = @"InfoViewControllerCellIdentifier";
NSString *const KeyForObjectInCityDictionaryInfoViewController = @"stations";
NSString *const KeyForObjectInStationDictionaryInfoViewController = @"stationTitle";

@interface TMInfoViewController()

@property(strong, nonatomic) NSDictionary *city;

@end

@implementation TMInfoViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.presenter updateViewWithData:self.dataProperty];
}

#pragma mark - TMInfoView

-(void)showInfoForCity:(id)city
{
    self.city = city;
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.city objectForKey:KeyForObjectInCityDictionaryInfoViewController] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifierInfoViewController forIndexPath:indexPath];
    cell.textLabel.text = [[[self.city objectForKey:KeyForObjectInCityDictionaryInfoViewController] objectAtIndex:indexPath.row] objectForKey:KeyForObjectInStationDictionaryInfoViewController];
    return cell;
}

@end
