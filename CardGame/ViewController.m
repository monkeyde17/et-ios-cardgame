//
//  ViewController.m
//  CardGame
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundColor:[UIColor colorWithRed:0.10f
                                                   green:0.10f
                                                    blue:0.10f
                                                   alpha:1.0f]];
        [sender setTitle:@""
                forState:UIControlStateNormal];
    } else {
        [sender setBackgroundColor:[UIColor colorWithRed:1.0f
                                                   green:1.0f
                                                    blue:1.0f
                                                   alpha:1.0f]];
        [sender setTitle:@"A♥︎"
                forState:UIControlStateNormal];
    }
    /* like as self.flipCount = self.flipCount + 1 */
    /* invokes both the getter and setter */
    self.flipCount++;
}







@end
