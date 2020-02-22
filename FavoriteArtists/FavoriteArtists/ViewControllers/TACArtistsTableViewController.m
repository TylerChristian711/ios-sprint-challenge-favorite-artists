//
//  TACArtistsTableViewController.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACArtistsTableViewController.h"
#import "TACArtistController.h"
#import "TACDetailViewController.h"
#import "TACSearchViewController.h"
#import "TACArtists.h"

@interface TACArtistsTableViewController ()

@property (nonatomic,readonly) TACArtistController *artistController;

@end

@implementation TACArtistsTableViewController

-(instancetype)initWithCoder:(NSCoder *)coder {
    
    self = [super initWithCoder:coder];
    if (self) {
        _artistController = [[TACArtistController alloc] init];
    }
    return self;
}

static NSString * const reuseIdentifier = @"ArtistCell";

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.artistController.artists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    TACArtists *artist = self.artistController.artists[indexPath.row];
    cell.textLabel.text = artist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Formed in %@", [artist formedYearString]];
  
    
    return cell;
}



 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     if ([[segue identifier] isEqual:@"ShowDetialView"]) {
         TACDetailViewController *destinationVC = [segue destinationViewController];
         NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
         destinationVC.artist = self.artistController.artists[indexPath.row];
     } else if ([[segue identifier] isEqual:@"ShowSearchView"]) {
         TACSearchViewController *destinationVC = [segue destinationViewController];
         destinationVC.artistController = self.artistController;
     }
 }
 

@end
