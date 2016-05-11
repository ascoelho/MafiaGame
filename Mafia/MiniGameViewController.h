//
//  MiniGameViewController.h
//  Mafia
//
//  Created by Anthony Coelho on 2016-05-11.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"

@interface MiniGameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *problem;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@property (strong, nonatomic) GameModel *model;
@property (strong, nonatomic) NSString *player;




- (IBAction)buttonPressed:(UIButton *)sender;


@end
