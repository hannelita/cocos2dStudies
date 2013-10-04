//
//  GameViewController.m
//  TestGame
//
//  Created by Hanneli Tavante on 9/30/13.
//  Copyright (c) 2013 Test. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.impossibleView = [[Impossible alloc] init];
    
    self.impossibleView.frame = CGRectMake(0.0f, 0.0f, self.view.frame.size.width, self.view.frame.size.height);
    
    [self.view addSubview:self.impossibleView];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    
    [self.impossibleView addGestureRecognizer:tapGesture];
    
    UIButton *buttonRestart = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonRestart setTitle:@"Restart" forState:UIControlStateNormal];
    buttonRestart.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    buttonRestart.frame = CGRectMake(20.0f, 170.0f, 80.0f, 35.0f);
    [buttonRestart addTarget:self action:@selector(restart:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonRestart];
    
    UIButton *buttonStop = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonStop setTitle:@"Stop" forState:UIControlStateNormal];
    buttonStop.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    buttonStop.frame = CGRectMake(20.0f, 25.0f, 80.0f, 35.0f);
    [buttonStop addTarget:self action:@selector(stop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonStop];
    
    
}

- (void)handleTapGesture:(UITapGestureRecognizer*)gesture
{
    if (gesture.state == UIGestureRecognizerStateEnded) {
        [self.impossibleView moveDown:10];
        [self.impossibleView increaseScore:100];
    }
}

- (void)restart:(id)sender
{
    [self.impossibleView restart];
}

- (void)stop:(id)sender
{
    [self.impossibleView stopGame];
}


@end
