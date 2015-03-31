//
//  ViewController.h
//  RhymePad1
//
//  Created by Heath Armstrong on 3/31/15.
//  Copyright (c) 2015 Heath Armstrong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputText;
- (IBAction)boomButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *rhymeBox;


@end

