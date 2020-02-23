//
//  TACDetailViewController.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACDetailViewController.h"
#import "TACArtists.h"
#import "TACArtistController.h"

@interface TACDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *yearFormedLabel;
@property (weak, nonatomic) IBOutlet UITextView *biographyTextField;
-(void)updateViews;

@end

@implementation TACDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (self.artist) {
        self.title = self.artist.name;
        self.yearFormedLabel.text = [NSString stringWithFormat:@"Formed in: %@", [self.artist formedYearString]];
        self.biographyTextField.text = self.artist.biography;
    }
}


@end
