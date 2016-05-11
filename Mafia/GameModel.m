//
//  GameModel.m
//  Two Player Math Game
//
//  Created by Anthony Coelho on 2016-05-09.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel


-(instancetype)init{
    self = [super init];
    if (self){
        _player = [[Player alloc] initWithPlayerNumber:1];
        _answer = 0;
        _mafiaConfessed = NO;
        _innocentVictimsLeft = 3;

    }
    return self;
}

-(NSString *)generateProblem {
    

    [self clearAnswer];
    
     int operation = 1 + arc4random() %(3);
    
    int number1 = 1 + arc4random() %(20);
    int number2 = 1 + arc4random() %(20);
    
    
    
    if (operation == 1) {
        self.rightAnswer = number1 + number2;
        return [NSString stringWithFormat:@"%d + %d?",number1, number2];
    }
    else if (operation ==2 && number1 > number2) {
        self.rightAnswer = number1 - number2;
        return [NSString stringWithFormat:@"%d - %d?",number1, number2];
    }
    else {
        self.rightAnswer = number1 * number2;
        return [NSString stringWithFormat:@"%d x %d?",number1, number2];
    }
    



}

-(void)addToAnswer:(int)value{
    
    
    self.answer = (self.answer * 10) + value;
    
}

-(NSString *)checkAnswer{
    
    if (self.answer != self.rightAnswer) {
        return @"Incorrect!";
    }
    else {
        return @"Correct!";
        
    }
 
}

-(void)clearAnswer{
    
    _answer = 0;
}





@end
