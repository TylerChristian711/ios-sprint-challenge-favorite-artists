//
//  TACSearchViewController.h
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TACArtistController, TACArtists;

@interface TACSearchViewController : UIViewController <UISearchBarDelegate>

@property (nonatomic) TACArtistController *artistController;
@property (nonatomic) TACArtists *artist;
@end

