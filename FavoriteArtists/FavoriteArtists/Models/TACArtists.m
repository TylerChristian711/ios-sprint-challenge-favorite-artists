//
//  TACArtists.m
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import "TACArtists.h"

@implementation TACArtists

-(instancetype)initWithName:(NSString *)name biography:(NSString *)biography formedYear:(int)formedYear {
    
    self = [self init];
    if (self) {
        _name = name;
        _biography = biography;
        _formedYear = formedYear;
    }
    return self;
}

-(NSString *)formedYearString {
    return [[NSNumber numberWithInt:self.formedYear] stringValue];
}

@end
