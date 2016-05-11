//
//  MiniGameViewController.m
//  Mafia
//
//  Created by Anthony Coelho on 2016-05-11.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "MiniGameViewController.h"
#import "GameStatusViewController.h"

@implementation MiniGameViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.model = [[GameModel alloc] init];
    self.messageLabel.text = nil;
    self.problem.text = [self.model generateProblem];
    

}

- (void)viewWillAppear:(BOOL)animated{
    
    self.problem.text = [self.model generateProblem];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    
    if (sender.tag != 10) {
        [self.model addToAnswer:(int)sender.tag];
    }
    else {

            
        self.messageLabel.text = [self.model checkAnswer];
        
        self.messageLabel.alpha = 1.0;
        
        if ([self.messageLabel.text isEqualToString:@"Correct!"]){
            self.messageLabel.backgroundColor = [UIColor greenColor];
            self.model.answerCorrect = YES;
            if ([self.player isEqualToString:@"Mafia"]) {
                
                self.model.innocentVictimsLeft -= 1;
            }
            if ([self.player isEqualToString:@"Sheriff"]) {
                
                int confession = 1 + arc4random() %(4);
                if (confession == 2) {
                    self.model.mafiaConfessed = YES;
                }
                
            }
    
            [self performSegueWithIdentifier:@"customSegue" sender:nil];

        }
            
        else {
            self.messageLabel.backgroundColor = [UIColor redColor];
            
            self.problem.text = [self.model generateProblem];
            self.model.answerCorrect = NO;
            
            [self performSegueWithIdentifier:@"customSegue" sender:nil];
        }
        
        
        [UIView animateWithDuration:1.0 delay:0.0 options:0
                         animations:^{
                             self.messageLabel.alpha = 0;
                         }
                         completion:nil];
        
    }
    


}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
        
        GameStatusViewController *destViewController = segue.destinationViewController;
        destViewController.player = self.player;
        destViewController.model = self.model;
}
- (IBAction)restart:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}




@end
