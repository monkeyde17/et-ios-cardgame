//
//  PlayingCard.m
//  PlayingCard
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard ()

@end

@implementation PlayingCard

+ (NSArray *) validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *) rankStrings
{
    return @[@"?",@"A", @"2", @"3", @"4", @"5", @"6",
             @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSInteger) maxRank
{
    return [[self rankStrings] count] - 1;
}

- (NSString *) content
{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

- (void) setSuit:(NSString *) suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

- (void) setRank:(NSInteger) rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
