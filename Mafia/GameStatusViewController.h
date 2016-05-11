//
//  GameStatusViewController.h
//  Mafia
//
//  Created by Anthony Coelho on 2016-05-11.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"

@interface GameStatusViewController : UIViewController

@property (strong, nonatomic) NSString *player;
@property (strong, nonatomic) GameModel *model;


@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@property (weak, nonatomic) IBOutlet UIButton *keepPlayingButton;
@property (weak, nonatomic) IBOutlet UIButton *playAgain;




@end
