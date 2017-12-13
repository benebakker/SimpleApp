//
//  ViewController.m
//  SimpleApp
//
//  Created by Ben Bakker on 12/2/17.
//  Copyright © 2017 Ben Bakker. All rights reserved.
//

#import "Counter.h"
#import "ViewController.h"

@interface ViewController ()

@property NSInteger theCount;
@property Counter *myCounter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set the counter to zero when the view loads
    
    self.myCounter = [[Counter alloc] init];
    
    //set up the view
    self.view.backgroundColor = [UIColor yellowColor];
    
    // add and setup the button
    self.theButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.theButton addTarget:self
                       action:@selector(buttonClicked:)
             forControlEvents:UIControlEventTouchUpInside];
    self.theButton.layer.cornerRadius = 8;
    self.theButton.layer.borderWidth = 1;
    self.theButton.layer.borderColor = [UIColor blueColor].CGColor;
    [self.theButton setTitle:@"Press to Count" forState:UIControlStateNormal];
    [self.theButton setBackgroundColor:[UIColor redColor]];
    self.theButton.frame = CGRectMake(120.0, 210.0, 160.0, 40.0);
    [self.view addSubview:self.theButton];
    
    // add and set up the label
    self.counterLabel = [[UILabel alloc]initWithFrame:CGRectMake(120, 400, 160, 40)];
    self.counterLabel.text = @"0";
    self.counterLabel.textAlignment = NSTextAlignmentCenter;
    self.counterLabel.layer.borderColor = [UIColor greenColor].CGColor;
    self.counterLabel.layer.borderWidth = 1.0;
    self.counterLabel.layer.cornerRadius = 8;
    self.counterLabel.layer.backgroundColor=[UIColor whiteColor].CGColor;
    [self.view addSubview:self.counterLabel];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonClicked:(id)sender{
    /*
     The dot notation (i.e. self.myCounter) is meant for properties, not for arbitrary methods (self.myCounter.getCount). self.myCounter.getCount would be interpreted as "get the 'getCount' property of 'self.myCounter'," which isn't what is intended.
     
     Use [self.myCounter getCount] instead.  --- taken from https://stackoverflow.com/questions/5346682/xcode-warning-property-access-results-unused-getters-should-not-be-used-for-s
     */
    [self.myCounter incrementCounter];
    [self.counterLabel setText:[self.myCounter getCount]];
    // the above is equivalent to self.counterLabel.text=[self.myCounter getCount];
}


@end

