//
//  PlayingCard.h
//  PlayingCard
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *) validSuits;
+ (NSInteger) maxRank;

@end
