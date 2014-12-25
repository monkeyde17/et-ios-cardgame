//
//  Deck.m
//  PlayingCard
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import "Deck.h"

@interface Deck()
{
    int b;
}
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *) cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    a = 10;
    b = 11;
    
    
    return _cards;
}

- (void) addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *) drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count] > 0 ) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = [self.cards objectAtIndex:index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
