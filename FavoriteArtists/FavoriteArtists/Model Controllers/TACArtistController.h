//
//  TACArtistController.h
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TACArtists;

@interface TACArtistController : NSObject

@property (nonatomic, readonly) NSArray *artists;


-(void)searchForArtistsByName:(NSString *)name completion:(void (^)(TACArtists *artist, NSError *error))completion;

-(void)writeDictionaryToFile:(NSDictionary *)dictionary;


@end


