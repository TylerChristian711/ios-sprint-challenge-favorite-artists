//
//  TACSearchViewController.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACSearchViewController.h"
#import "TACArtists.h"
#import "TACNSJSONSerialization.h"
#import "TACArtistController.h"

@interface TACSearchViewController ()

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *formedYearLabel;
@property (weak, nonatomic) IBOutlet UITextView *biographyTextView;

-(void)updateViews;
-(void)saveArtistToDictionary;

@end

@implementation TACSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    [self.searchBar setDelegate: self];
}

- (void)updateViews {
    if (self.artist) {
        self.nameLabel.text = self.artist.name;
        self.formedYearLabel.text = [NSString stringWithFormat:@"Formed in: %@", [self.artist formedYearString]];
        self.biographyTextView.text = self.artist.biography;
   } else {
       self.nameLabel.text = @"";
       self.formedYearLabel.text = @"";
       self.biographyTextView.text = @"";
    }
}

- (IBAction)saveButtonPressed:(id)sender {
    [self saveArtistToDictionary];
}

-(void)saveArtistToDictionary {
    [self.artistController writeDictionaryToFile:[self.artist toDictionary]];
    [self.navigationController popViewControllerAnimated:TRUE];
}

#pragma mark UIsearchBarDelegate

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    NSLog(@"Search bar tapped");
    if (self.artistController){
        NSLog(@"EXECUTING self.artistController searchForArtists");
    }
    
    if (!self.artistController){
        NSLog(@"No artist controller in self");
    }
    
    
    
    [self.artistController searchForArtistsByName:searchBar.text completion:^(TACArtists *artist, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            self.artist = artist;
            [self updateViews];
        });

    }];
}


@end
