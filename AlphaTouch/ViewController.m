//
//  ViewController.m
//  AlphaTouch
//
//  Created by Jorge on 11/13/13.
//  Copyright (c) 2013 Jorge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *view;
@property (strong, nonatomic) UIButton *turnBlue;
@property (strong, nonatomic) UIButton *turnYellow;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
}

- (void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    
    self.view = colorView;
    
    self.turnBlue = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.turnBlue.frame = CGRectMake(100, 100, 100, 44);
    [self.turnBlue setTitle:@"Turn Blue!" forState:UIControlStateNormal];
    [self.turnBlue addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.turnBlue];
    
    self.turnYellow = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    self.turnYellow.frame = CGRectMake(100, 300, 100, 44);
    [self.turnYellow setTitle:@"Turn Yellow!" forState:UIControlStateNormal];
    [self.turnYellow addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.turnYellow];
}

- (void)changeColor:(UIButton *)sender
{
    if ([sender isEqual:self.turnBlue]) {
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor yellowColor];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touch started");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.view.alpha = ((double)arc4random() / 0x100000000);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
