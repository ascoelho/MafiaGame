//
//  ViewController.m
//  Mafia
//
//  Created by Anthony Coelho on 2016-05-11.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "ViewController.h"
#import "MiniGameViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
        
    MiniGameViewController *destViewController = segue.destinationViewController;
    if (sender == self.mafiaButton) {
        destViewController.player = self.mafiaButton.titleLabel.text;
    }
    else {
        destViewController.player = self.sheriffButton.titleLabel.text;
    }
    
    

}
- (IBAction)unwindToViewController:(UIStoryboardSegue *)segue {
    
}


@end
