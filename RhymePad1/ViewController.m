//
//  ViewController.m
//  RhymePad1
//
//  Created by Heath Armstrong on 3/31/15.
//  Copyright (c) 2015 Heath Armstrong. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)boomButtonPressed:(UIButton *)sender {
    
    
    NSString * myInputText = self.inputText.text;
    NSString * firstLetter = [NSString stringWithFormat:@"%c",[myInputText characterAtIndex:0]];
    NSRange range = NSMakeRange(1, myInputText.length-1);
    NSString * restOfLetters = [myInputText substringWithRange:range];
    NSString * pigLatin = [NSString stringWithFormat:@"%@%@%@",restOfLetters,firstLetter, @"ay"];
    
    NSLog (@"%@", firstLetter);
    NSLog (@"%@", pigLatin);
     self.rhymeBox.text = pigLatin;
    
}

@end
