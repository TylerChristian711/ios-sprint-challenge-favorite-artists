//
//  TACNSJSONSerialization.h
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//


#import "TACArtists.h"



@interface TACArtists (NSJSONSerialization)


-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)toDictionary;


@end


