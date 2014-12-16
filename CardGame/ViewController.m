//
//  ViewController.m
//  CardGame
//
//  Created by etond on 14/12/16.
//  Copyright (c) 2014年 etond. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)touchCardButton:(UIButton *)sender
{
    NSLog(@"%lu", [sender.currentTitle length]);
    
    
    if ([sender.currentTitle length]) {
        NSLog(@"1");
        [sender setBackgroundColor:[UIColor colorWithRed:0.100f
                                                   green:0.110f
                                                    blue:0.110f
                                                   alpha:1.0f]];
        [sender setTitle:@""
                forState:UIControlStateNormal];
    } else {
        NSLog(@"2");
        [sender setBackgroundColor:[UIColor colorWithRed:0.220f
                                                   green:0.170f
                                                    blue:0.240f
                                                   alpha:1.0f]];
        [sender setTitle:@"A♥︎"
                forState:UIControlStateNormal];
    }
}

@end
