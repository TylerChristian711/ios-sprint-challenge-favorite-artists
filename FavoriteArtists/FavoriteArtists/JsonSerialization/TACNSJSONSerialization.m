//
//  TACNSJSONSerialization.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACNSJSONSerialization.h"


@implementation TACArtists (NSJSONSerialization)

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    NSString *name = dictionary[@"strArtist"];
    NSString *strformedYear = dictionary[@"intFormedYear"];
    int formedYear = 0;
    if ([strformedYear isKindOfClass:[NSString class]]) {
        formedYear = [strformedYear intValue];
    }
    NSString *biography = dictionary[@"strBiographyEN"];
    return [self initWithName:name biography:biography formedYear:formedYear];
}

-(NSDictionary *)toDictionary {
    NSDictionary *artistsDictionary = @{
        @"strArtist" : self.name,
        @"intFormedYear" : [self formedYearString],
        @"strBiographyEN" : self.biography
    };
    return artistsDictionary;
}

@end
