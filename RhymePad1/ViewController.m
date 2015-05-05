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
    
    //user input
    NSString * myInputText = self.inputText.text;
    NSString * pigLatin;
    //identifies words in a sentance based off seperation by spaces
    NSArray *wordsInSentence = [myInputText componentsSeparatedByString:@" "];
    //logs the array above
    NSLog(@"%@", wordsInSentence);
    //starts at the first word and counts how many words are in sentence. Loops through those words
    for (int word=0; word <[wordsInSentence count]; word++) {
        //sets myWord equal to the object from the array wordInSentence at the index # word
        NSString * myWord =[wordsInSentence objectAtIndex:word];
        //go to the first letter in myWord and store it in the variable firstLetter
        NSString * firstLetter = [NSString stringWithFormat:@"%c",[myWord characterAtIndex:0]];
        //creating a new word by counting the characters and subtracting the first letter, then storing the first letter
        NSRange range = NSMakeRange(1, myWord.length-1);
        //grabs the rest of the letters and stores them in a variable called rest of letter
        NSString * restOfLetters = [myWord substringWithRange:range];
        //creating a format from the values of restofletter, firstLetter and "ay"
        pigLatin = [NSString stringWithFormat:@"%@%@%@",restOfLetters,firstLetter, @"ay"];
        NSLog(@"%@", [wordsInSentence objectAtIndex:word]);
        NSLog(@"%@", pigLatin);
   NSArray *pigLatinWordsInSentence = [pigLat]
    
   // NSLog (@"%@", firstLetter);
   // NSLog (@"%@", pigLatin);
   
    
      }
     self.rhymeBox.text = pigLatin;
}


@end
