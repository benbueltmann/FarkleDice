//
//  DieLabel.m
//  Farkle
//
//  Created by Ben Bueltmann on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.font = [UIFont fontWithName:@"Dice" size:60];
    }
    return self;
}
- (IBAction)onTapped:(UITapGestureRecognizer *)sender {
    self.backgroundColor = [UIColor colorWithRed:22/255.0 green:128/255.0 blue:18/255.0 alpha:1.0f];
    [self.delegate didChooseDie:self];
}

- (void)roll
{
    self.text = [NSString stringWithFormat:@"%d", arc4random()%6+1];
    self.backgroundColor = [UIColor colorWithRed:128/255.0 green:0/255.0 blue:0/255.0 alpha:1.0f];
}
@end
