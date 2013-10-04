//
//  Impossible.h
//  TestGame
//
//  Created by Hanneli Tavante on 9/30/13.
//  Copyright (c) 2013 Test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Impossible : UIView

@property (nonatomic, strong) NSTimer *gameRunTimer;
@property (nonatomic) BOOL running;

@property (nonatomic) int playerX;
@property (nonatomic) int playerY;
@property (nonatomic) int playerRadius;

@property (nonatomic) int enemyX;
@property (nonatomic) int enemyY;
@property (nonatomic) int enemyRadius;

@property (nonatomic, strong) UILabel *gameOverLabel;

@property (nonatomic) int score;
@property (nonatomic, strong) UILabel *gameScoreLabel;


-(void)moveDown:(int)pixels;
-(void)increaseScore:(int)points;

-(void)restart;
-(void)stopGame;

@end
