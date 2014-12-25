//
//  Card.h
//  PlayCard
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *content;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *) otherCards;

@end