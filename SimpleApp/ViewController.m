//
//  ViewController.m
//  SimpleApp
//
//  Created by Ben Bakker on 12/2/17.
//  Copyright © 2017 Ben Bakker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSInteger theCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set the counter to zero when the view loads
    self.theCount = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonClicked:(id)sender{
    _theCount=_theCount+1;
    self.counterLabel.text=[NSString stringWithFormat:@"%ld", (long)self.theCount];
}


@end
