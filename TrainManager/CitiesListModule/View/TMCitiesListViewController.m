//
//  ViewController.m
//  TrainManager
//
//  Created by Kapam6a on 17.04.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "TMCitiesListViewController.h"
#import "TMInfoViewController.h"
#import "UIViewController+DataProperty.h"

NSString *const CellIdentifierCitiesListViewController = @"CitiesListViewControllerCellIdentifier";
NSString *const KeyForObjectInCityDictionaryCitiesListViewController = @"cityTitle";

@interface TMCitiesListViewController ()<UITableViewDataSource,UISearchBarDelegate,UITableViewDelegate>

@property(strong, nonatomic) NSArray *cities;
@property(weak, nonatomic) UISearchBar *currentSearchBar;

@end

@implementation TMCitiesListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.activityIndicator.hidesWhenStopped = YES;
    self.toSearchBar.delegate = self;
    self.fromSearchBar.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark - TMCitiesListView

-(void)showCitiesFrom:(NSArray *)citiesFrom
{
    self.cities = citiesFrom;
    [self.tableView reloadData];
}

-(void)showCitiesTo:(NSArray *)citiesTo
{
    self.cities = citiesTo;
    [self.activityIndicator stopAnimating];
    [self.tableView reloadData];
}

-(void)showIndicator
{
    [self.activityIndicator startAnimating];
}

-(void)hideIndicator
{
    [self.activityIndicator stopAnimating];
}

-(void)showDate:(NSDate *)date
{
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    [self.dateButton setTitle:[formatter stringFromDate:date] forState:UIControlStateNormal];
}

#pragma mark - UISearchBarDelegate

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
{
    if(searchBar == self.fromSearchBar){
        [self.presenter didSelectSearchBarCitiesFrom];
    } else {
        [self.presenter didSelectSearchBarCitiesTo];
    }
    self.currentSearchBar = searchBar;
    return YES;
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchBar == self.fromSearchBar){
        [self.presenter didSelectSearchBarCitiesFromWithFieldContains:searchText];
    } else {
        [self.presenter didSelectSearchBarCitiesToWithFieldContains:searchText];
    }
}

#pragma mark - IBAction

- (IBAction)dateButtonAction:(id)sender
{
    [self.presenter didPressDateButton];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cities count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifierCitiesListViewController forIndexPath:indexPath];
 
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    cell.textLabel.text = [[self.cities objectAtIndex:indexPath.row] objectForKey:KeyForObjectInCityDictionaryCitiesListViewController];
    return cell;
}

#pragma mark - UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.presenter didSelectRowWithData:[self.cities objectAtIndex:indexPath.row]];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - TMCitiesListTransitionHandler

-(void)openNewModuleWithSegueID:(NSString *)identifier withData:(id)data
{
    [self performSegueWithIdentifier:identifier sender:data];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    segue.destinationViewController.dataProperty = sender;
}

@end
