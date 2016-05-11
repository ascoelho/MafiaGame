//
//  GameStatusViewController.m
//  Mafia
//
//  Created by Anthony Coelho on 2016-05-11.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "GameStatusViewController.h"

@implementation GameStatusViewController


- (void)viewDidLoad {
    
    
    
    if ([self.player isEqualToString:@"Mafia"]) {
      
        if (self.model.innocentVictimsLeft > 0) {
            
            if (self.model.answerCorrect == YES) {

                self.messageLabel.text = [NSString stringWithFormat:@"%@ - You've killed an innocent victim\nNumber of Innocent Victims Left\n%d",self.player, self.model.innocentVictimsLeft];
            } else {
                self.messageLabel.text = [NSString stringWithFormat:@"%@ - You did not kill an innocent victim\nNumber of Innocent Victims Left\n%d",self.player, self.model.innocentVictimsLeft];
            }
            self.keepPlayingButton.hidden = NO;
            self.playAgain.hidden = YES;
        }
        else {
            self.messageLabel.text = [NSString stringWithFormat:@"%@ - You've killed every innocent victim\nNumber of Innocent Victims Left\n%d\nGAME OVER",self.player, self.model.innocentVictimsLeft];
            
            self.keepPlayingButton.hidden = YES;
            self.playAgain.hidden = NO;
            
        }
    }
    else {
        if (self.model.answerCorrect == YES) {
            if (self.model.mafiaConfessed == NO) {  
                self.messageLabel.text = [NSString stringWithFormat:@"%@\nThe mafia member has not confessed",self.player];
                self.keepPlayingButton.hidden = NO;
                self.playAgain.hidden = YES;
            }
            else {
                self.messageLabel.text = [NSString stringWithFormat:@"%@\nThe mafia member confessed\nGAME OVER",self.player];
                
                self.keepPlayingButton.hidden = YES;
                self.playAgain.hidden = NO;
                
            }
        }
        else {
            self.messageLabel.text = [NSString stringWithFormat:@"%@\nThe mafia member was not interrogated",self.player];
            self.keepPlayingButton.hidden = NO;
            self.playAgain.hidden = YES;
            
        }
    }

    
}
- (IBAction)dismissVC:(id)sender {
    
    if (sender == self.keepPlayingButton) {
        
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
 
    
}

@end
