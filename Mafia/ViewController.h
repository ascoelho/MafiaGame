//
//  ViewController.h
//  Mafia
//
//  Created by Anthony Coelho on 2016-05-11.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) NSString *player;
@property (weak, nonatomic) IBOutlet UIButton *mafiaButton;
@property (weak, nonatomic) IBOutlet UIButton *sheriffButton;

@end

