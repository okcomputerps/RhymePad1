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
  //  NSString * word1 = @"jabroni";
  //  NSString * word2 = @"hillary";
  //  NSString * sentence = @"hard to see, the dark side is.";
    
   // NSArray *wordInSentence = [sentence componentsSeparatedByString:@" "];
    
    //NSArray *myArray = [[NSArray alloc] initWithObjects:word1, word2, nil];
    //NSLog(@"%@", wordInSentence);
   // for (int word=0; word <[wordInSentence count]; word++) {
   //     NSLog(@"%@", [wordInSentence objectAtIndex:word]);
   // }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boomButtonPressed:(UIButton *)sender {
    
    
    NSString * myInputText = self.inputText.text;
    
    NSArray *wordsInSentence = [myInputText componentsSeparatedByString:@" "];
    NSLog(@"%@", wordsInSentence);
    for (int word=0; word <[wordsInSentence count]; word++) {
        NSString * firstLetter = [NSString stringWithFormat:@"%c",[myInputText characterAtIndex:0]];
        NSRange range = NSMakeRange(1, myInputText.length-1);
        NSString * restOfLetters = [myInputText substringWithRange:range];
        NSString * pigLatin = [NSString stringWithFormat:@"%@%@%@",restOfLetters,firstLetter, @"ay"];

        NSLog(@"%@", [wordsInSentence objectAtIndex:word]);
    }
    
    
    //NSLog (@"%@", firstLetter);
    //NSLog (@"%@", pigLatin);
     self.rhymeBox.text = pigLatin;
    
    
    
}


@end
