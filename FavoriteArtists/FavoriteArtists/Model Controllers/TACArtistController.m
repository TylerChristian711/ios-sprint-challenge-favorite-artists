//
//  TACArtistController.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACArtistController.h"
#import "TACNSJSONSerialization.h"

@interface TACArtistController()

@property (nonatomic) NSDictionary *artistDictionary;

-(void)loadArtistDictionary;
-(NSURL *)artistFileURL;

@end

@implementation TACArtistController

static NSString * const baseURLString = @"https://www.theaudiodb.com/api/v1/json/1/search.php";

-(instancetype)init {
    self = [super init];
    if (self) {
        _artistDictionary = @{
            @"artists" : [[NSMutableArray alloc] init]
        };
        [self loadArtistDictionary];
    }
    return self;
}

-(NSArray *)artists {
    NSMutableArray *artistArray = [[NSMutableArray alloc] init];
    NSArray *artistDictionaries = self.artistDictionary[@"artists"];
    for (NSDictionary *artists in artistDictionaries) {
        TACArtists *artist = [[TACArtists alloc] initWithDictionary:artists];
        [artistArray addObject:artist];
    }
    return [artistArray copy];
}

-(void)writeDictionaryToFile:(NSDictionary *)dictionary {
    NSURL *fileURL = [self artistFileURL];
    NSLog(@"FileURL %@", fileURL);
    NSError *writeToURLError = nil;
    
    [self.artistDictionary[@"artists"] addObject:dictionary];
    NSLog(@"Dictionary %@", self.artistDictionary);
    
    if ([self.artistDictionary writeToURL:fileURL error:&writeToURLError]) {
        
    }
}



@end
