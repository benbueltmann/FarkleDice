//
//  ViewController.m
//  Farkle
//
//  Created by Ben Bueltmann on 7/30/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"
@interface ViewController () <DieLabelDelegate>
@property (weak, nonatomic) IBOutlet DieLabel *label1;
@property (weak, nonatomic) IBOutlet DieLabel *label2;
@property (weak, nonatomic) IBOutlet DieLabel *label3;
@property (weak, nonatomic) IBOutlet DieLabel *label4;
@property (weak, nonatomic) IBOutlet DieLabel *label5;
@property (weak, nonatomic) IBOutlet DieLabel *label6;
@property (weak, nonatomic) IBOutlet UIButton *rollButton;
@property NSMutableArray *dice;
@property (weak, nonatomic) IBOutlet UILabel *userScore;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label1.layer.cornerRadius = 9;
    self.label2.layer.cornerRadius = 9;
    self.label3.layer.cornerRadius = 9;
    self.label4.layer.cornerRadius = 9;
    self.label5.layer.cornerRadius = 9;
    self.label6.layer.cornerRadius = 9;
    self.rollButton.layer.cornerRadius = 9;

    self.label1.delegate = self;
    self.label2.delegate = self;
    self.label3.delegate = self;
    self.label4.delegate = self;
    self.label5.delegate = self;
    self.label6.delegate = self;
    self.dice = [[NSMutableArray alloc]init];

}

- (IBAction)onRollButtonPressed:(id)sender {

    if(![self.dice containsObject:self.label1]) {
        [self.label1 roll];
    }
    if(![self.dice containsObject:self.label2]) {
        [self.label2 roll];
    }
    if(![self.dice containsObject:self.label3]) {
        [self.label3 roll];
    }
    if(![self.dice containsObject:self.label4]) {
        [self.label4 roll];
    }
    if(![self.dice containsObject:self.label5]) {
        [self.label5 roll];
    }
    if(![self.dice containsObject:self.label6]) {
        [self.label6 roll];
    }
}

-(void)didChooseDie:(id)dieLabel
{
    DieLabel *label = (DieLabel *)dieLabel;
    label.backgroundColor = [UIColor colorWithRed:22/255.0 green:128/255.0 blue:18/255.0 alpha:1.0f];
    [self.dice addObject:label];

}
- (IBAction)reset:(id)sender {

    [self.label1 roll];
    [self.label2 roll];
    [self.label3 roll];
    [self.label4 roll];
    [self.label5 roll];
    [self.label6 roll];
    [self.dice removeAllObjects];


}


@end
