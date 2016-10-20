//
//  ViewController.m
//  sColorBlocks
//
//  Created by Mac on 07/10/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "ViewController.h"
#define kWidthPart 138.0000
#define kHeightPart 245.3333
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self calculateHeightWidth];
    [self addButtonYellow];
    [self addButtonRed];
    [self addButtonBlue];
    [self addButtonBlack];
    [self addButtonPurple];
    [self addButtonMagenta];
    [self addButtonGreen];
    [self addButtonCyan];
    [self addButtonOrange];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)calculateHeightWidth{
    
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    //NSLog(@"%f", screenWidth/3);
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    //NSLog(@"%f", screenHeight/3);
}

-(void)addButtonYellow{
    
    button1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, kWidthPart, kHeightPart)];
    button1.backgroundColor = [UIColor yellowColor];
    [button1 addTarget:self action:@selector(handleYellowOrange) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

-(void)addButtonRed{
    
    button2 = [[UIButton alloc]initWithFrame:CGRectMake(kWidthPart, 0, screenWidth - (2 * kWidthPart), kHeightPart)];
    button2.backgroundColor = [UIColor redColor];
    [button2 addTarget:self action:
     @selector(handleRedCyan) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

-(void)addButtonBlue{
    
    button3 = [[UIButton alloc]initWithFrame:CGRectMake(2 * kWidthPart, 0, screenWidth - (2 * kWidthPart), kHeightPart)];
    button3.backgroundColor = [UIColor blueColor];
    [button3 addTarget:self action:@selector(handleBlueGreen) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
}

-(void)addButtonBlack{
    
    button4 = [[UIButton alloc]initWithFrame:CGRectMake(0, kHeightPart, kWidthPart, kHeightPart)];
    button4.backgroundColor = [UIColor blackColor];
    [button4 addTarget:self action:@selector(handleBlackMagenta) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
}

-(void)addButtonPurple{
    
    button5 = [[UIButton alloc]initWithFrame:CGRectMake(kWidthPart, kHeightPart, screenWidth - (2 * kWidthPart), kHeightPart)];
    button5.backgroundColor = [UIColor purpleColor];
    [button5 addTarget:self action:@selector(handlePurpleGreen) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
}

-(void)addButtonMagenta{
    
    button6 = [[UIButton alloc]initWithFrame:CGRectMake(2 * kWidthPart, kHeightPart, screenWidth - (2 * kWidthPart), kHeightPart)];
    button6.backgroundColor = [UIColor magentaColor];
    [button6 addTarget:self action:@selector(handleBlackMagenta) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button6];
}

-(void)addButtonGreen{
    
    button7 = [[UIButton alloc]initWithFrame:CGRectMake(0, 2 * kHeightPart, kWidthPart, kHeightPart)];
    button7.backgroundColor = [UIColor greenColor];
    [button7 addTarget:self action:@selector(handleBlueGreen) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
}

-(void)addButtonCyan{
    
    button8 = [[UIButton alloc]initWithFrame:CGRectMake(kWidthPart, 2 * kHeightPart, screenWidth - (2 * kWidthPart), kHeightPart)];
    button8.backgroundColor = [UIColor cyanColor];
    [button8 addTarget:self action:@selector(handleRedCyan) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
}

-(void)addButtonOrange{
    
    button9 = [[UIButton alloc]initWithFrame:CGRectMake(2 * kWidthPart, 2 * kHeightPart, screenWidth - (2 * kWidthPart), kHeightPart)];
    button9.backgroundColor = [UIColor orangeColor];
    [button9 addTarget:self action:@selector(handleYellowOrange) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button9];
}

-(void)handleYellowOrange{
    
    if([button1.backgroundColor isEqual:[UIColor yellowColor]])
    {
        button1.backgroundColor = [UIColor orangeColor];
        button9.backgroundColor = [UIColor yellowColor];
    }
    else if([button1.backgroundColor isEqual:[UIColor orangeColor]])
    {
        button1.backgroundColor = [UIColor yellowColor];
        button9.backgroundColor = [UIColor orangeColor];
    }
}

-(void)handleRedCyan{
    
    if([button2.backgroundColor isEqual:[UIColor redColor]])
    {
        button2.backgroundColor = [UIColor cyanColor];
        button8.backgroundColor = [UIColor redColor];
    }
    else if([button2.backgroundColor isEqual:[UIColor cyanColor]])
    {
        button2.backgroundColor = [UIColor redColor];
        button8.backgroundColor = [UIColor cyanColor];

    }
}

-(void)handleBlueGreen{
    
    if([button3.backgroundColor isEqual:[UIColor blueColor]])
    {
        button3.backgroundColor = [UIColor greenColor];
        button7.backgroundColor = [UIColor blueColor];
    }
    else if([button3.backgroundColor isEqual:[UIColor greenColor]])
    {
        button3.backgroundColor = [UIColor blueColor];
        button7.backgroundColor = [UIColor greenColor];
    }
}

-(void)handleBlackMagenta{
    if([button4.backgroundColor isEqual:[UIColor blackColor]])
    {
        button4.backgroundColor = [UIColor magentaColor];
        button6.backgroundColor = [UIColor blackColor];
    }
    else if([button4.backgroundColor isEqual:[UIColor magentaColor]])
    {
        button4.backgroundColor = [UIColor blackColor];
        button6.backgroundColor = [UIColor magentaColor];
    }
    
}

-(void)handlePurpleGreen{
    
    if([button5.backgroundColor isEqual:[UIColor purpleColor]])
    {
        button5.backgroundColor = [UIColor greenColor];
        button7.backgroundColor = [UIColor purpleColor];
    }
    else if([button5.backgroundColor isEqual:[UIColor greenColor]])
    {
        button5.backgroundColor = [UIColor purpleColor];
        button7.backgroundColor = [UIColor greenColor];
    }
}

@end
