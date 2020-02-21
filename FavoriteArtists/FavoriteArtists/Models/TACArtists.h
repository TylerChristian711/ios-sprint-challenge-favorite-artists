//
//  TACArtists.h
//  FavoriteArtists
//
//  Created by Lambda_School_Loaner_218 on 2/21/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TACArtists : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *biography;
@property (nonatomic) int formedYear;

-(instancetype)initWithName:(NSString *)name
                  biography:(NSString *)biography
                  formedYear:(int)formedYear;

- (NSString *)formedYearString;


@end

NS_ASSUME_NONNULL_END
