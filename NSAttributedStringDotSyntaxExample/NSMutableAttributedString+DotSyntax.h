//
//  NSMutableAttributedString+DotSyntax.h
//  NSAttributedStringDotSyntaxExample
//
//  Created by Jaden Geller on 1/26/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (DotSyntax)

@property (nonatomic) UIFont            *font;
@property (nonatomic) NSParagraphStyle  *paragraphStyle;
@property (nonatomic) UIColor           *foregroundColor;
@property (nonatomic) UIColor           *backgroundColor;
@property (nonatomic) BOOL              ligature;
@property (nonatomic) CGFloat           kerning;
@property (nonatomic) NSUnderlineStyle  strikethroughStyle;
@property (nonatomic) NSUnderlineStyle  underlineStyle;
@property (nonatomic) UIColor           *strokeColor;
@property (nonatomic) CGFloat           strokeWidth;
@property (nonatomic) NSShadow          *shadow;
@property (nonatomic) NSString          *textEffect;
@property (nonatomic) NSTextAttachment  *textAttachment;
@property (nonatomic) NSURL             *link;
@property (nonatomic) CGFloat           baselineOffset;
@property (nonatomic) UIColor           *underlineColor;
@property (nonatomic) UIColor           *strikethroughColor;
@property (nonatomic) CGFloat           obliqueness;
@property (nonatomic) CGFloat           expansion;

+(NSMutableAttributedString*)concatenate:(NSArray*)strings;

@end
