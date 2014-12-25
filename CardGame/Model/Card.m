//
//  Card.m
//  PlayCard
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import "Card.h"
#import "Card_Text.h"

@interface Card()

@end

@implementation Card


- (int) match:(NSArray *) otherCards
{
    int score = 0;
    
    for (Card* card in otherCards) {
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }
    
    self.size = @"fuckyou";
    
    return score;
}

@end