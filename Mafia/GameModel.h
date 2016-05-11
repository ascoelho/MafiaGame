//
//  GameModel.h
//  Two Player Math Game
//
//  Created by Anthony Coelho on 2016-05-09.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (strong, nonatomic) Player *player;
@property int answer;
@property int rightAnswer;

@property BOOL mafiaConfessed;
@property int innocentVictimsLeft;
@property BOOL answerCorrect;



-(NSString *)generateProblem;

-(void)addToAnswer:(int)value;

-(NSString *)checkAnswer;






@end
