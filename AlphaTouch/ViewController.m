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
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 44);
    [button setTitle:@"Turn Blue!" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(turnBlue:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    UIButton *second_button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    second_button.frame = CGRectMake(100, 300, 100, 44);
    [second_button setTitle:@"Turn Yellow!" forState:UIControlStateNormal];
    [second_button addTarget:self action:@selector(turnBlue:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:second_button];
}

- (void)turnBlue:(UIButton *)sender
{
    if ([sender.titleLabel.text isEqualToString:@"Turn Blue!"]) {
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
