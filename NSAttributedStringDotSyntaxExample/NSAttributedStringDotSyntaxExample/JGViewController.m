//
//  JGViewController.m
//  NSAttributedStringDotSyntaxExample
//
//  Created by Jaden Geller on 1/26/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import "JGViewController.h"
#import "NSMutableAttributedString+DotSyntax.h"
#import "NSString+Conversion.h"

@interface JGViewController ()

@end

@implementation JGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSAString *textA = @"Test".attributedCopy;
    textA.font = [UIFont systemFontOfSize:40];
    textA.kerning = 4;
    textA.expansion = 1.2;
    
    NSAString *textB = @" this thing.".attributedCopy;
    textB.kerning = .3;
    textB.foregroundColor = [UIColor blueColor];
    
    self.label.attributedText = [NSAString concatenate:@[textA, textB]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
