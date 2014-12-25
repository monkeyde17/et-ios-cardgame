//
//  ViewController.m
//  CardGame
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation CardGameViewController

- (CardMatchingGame *) game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount: [self.cardButtons count]
                                                          usingDeck:[self createDeck]];
    return _game;
}

- (Deck *) deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

//- (void) setFlipCount:(int)flipCount
//{
//    _flipCount = flipCount;
//    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
//    NSLog(@"flipCount changed to %d", self.flipCount);
//}
//
- (IBAction)touchCardButton:(UIButton *)sender
{
    NSUInteger choseButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:choseButtonIndex];
    
    [self updateUI];
   
    /* like as self.flipCount = self.flipCount + 1 */
    /* invokes both the getter and setter */
    //self.flipCount++;
}

- (void) updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        NSUInteger cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundColor:[self backgroudColor:card]];
        
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", self.game.score];
    }
}

- (NSString *)titleForCard:(Card *)card
{
    return card.isChosen ? card.content : @"";
}

- (UIColor *)backgroudColor:(Card *)card
{
    return card.isChosen ? [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f] : [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
}




@end
