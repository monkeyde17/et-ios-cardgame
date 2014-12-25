//
//  CardMatchingGame.h
//  CardGame
//
//  Created by etond on 14/12/25.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSInteger)count
                        usingDeck:(Deck *) deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
