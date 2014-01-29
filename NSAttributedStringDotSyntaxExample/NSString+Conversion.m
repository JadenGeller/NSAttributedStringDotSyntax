//
//  NSString+Conversion.m
//  NSAttributedStringDotSyntaxExample
//
//  Created by Jaden Geller on 1/29/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import "NSString+Conversion.h"

@implementation NSString (Conversion)

-(NSMutableAttributedString*)attributedCopy{
    return [[NSMutableAttributedString alloc]initWithString:self];
}

@end
