//
//  NSMutableAttributedString+DotSyntax.m
//  NSAttributedStringDotSyntaxExample
//
//  Created by Jaden Geller on 1/26/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import "NSMutableAttributedString+DotSyntax.h"

@interface NSMutableAttributedString ()

@property (nonatomic, readonly) NSRange fullRange;

@end

@implementation NSMutableAttributedString (DotSyntax)

-(UIFont*)font{
    return [self attribute:NSFontAttributeName atIndex:0 effectiveRange:nil];
}

-(NSParagraphStyle*)paragraphStyle{
    return [self attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:nil];
}

-(UIColor*)foregroundColor{
    return [self attribute:NSForegroundColorAttributeName atIndex:0 effectiveRange:nil];
}

-(UIColor*)backgroundColor{
    return [self attribute:NSBackgroundColorAttributeName atIndex:0 effectiveRange:nil];
}

-(BOOL)ligature{
    return [self attribute:NSLigatureAttributeName atIndex:0 effectiveRange:nil];
}

-(CGFloat)kerning{
    return [[self attribute:NSKernAttributeName atIndex:0 effectiveRange:nil] doubleValue];
}

-(NSUnderlineStyle)underlineStyle{
    return [[self attribute:NSUnderlineStyleAttributeName atIndex:0 effectiveRange:nil] integerValue];
}

-(NSUnderlineStyle)strikethroughStyle{
    return [[self attribute:NSStrikethroughStyleAttributeName atIndex:0 effectiveRange:nil] integerValue];
}

-(UIColor*)strokeColor{
    return [self attribute:NSStrokeColorAttributeName atIndex:0 effectiveRange:nil];
}

-(CGFloat)strokeWidth{
    return [[self attribute:NSStrokeWidthAttributeName atIndex:0 effectiveRange:nil] doubleValue];
}

-(NSShadow*)shadow{
    return [self attribute:NSShadowAttributeName atIndex:0 effectiveRange:nil];
}

-(NSString*)textEffect{
    return [self attribute:NSTextEffectAttributeName atIndex:0 effectiveRange:nil];
}

-(NSTextAttachment*)textAttachment{
    return [self attribute:NSAttachmentAttributeName atIndex:0 effectiveRange:nil];
}

-(NSURL*)link{
    return [self attribute:NSLinkAttributeName atIndex:0 effectiveRange:nil];
}

-(CGFloat)baselineOffset{
    return [[self attribute:NSBaselineOffsetAttributeName atIndex:0 effectiveRange:nil] doubleValue];
}

-(UIColor*)underlineColor{
    return [self attribute:NSUnderlineColorAttributeName atIndex:0 effectiveRange:nil];
}

-(UIColor*)strikethroughColor{
    return [self attribute:NSUnderlineColorAttributeName atIndex:0 effectiveRange:nil];
}

-(CGFloat)obliqueness{
    return [[self attribute:NSObliquenessAttributeName atIndex:0 effectiveRange:nil] doubleValue];
}

-(CGFloat)expansion{
    return [[self attribute:NSExpansionAttributeName atIndex:0 effectiveRange:nil] doubleValue];
}

-(void)setFont:(UIFont *)font{
    [self setAttributes:@{NSFontAttributeName : font} range:self.fullRange];
}

-(void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle{
    [self setAttributes:@{NSParagraphStyleAttributeName : paragraphStyle} range:self.fullRange];
}

-(void)setForegroundColor:(UIColor *)foregroundColor{
    [self setAttributes:@{NSForegroundColorAttributeName : foregroundColor} range:self.fullRange];
}

-(void)setBackgroundColor:(UIColor *)backgroundColor{
    [self setAttributes:@{NSBackgroundColorAttributeName : backgroundColor} range:self.fullRange];
}

-(void)setLigature:(BOOL)ligature{
    [self setAttributes:@{NSLigatureAttributeName : @(ligature)} range:self.fullRange];
}

-(void)setKerning:(CGFloat)kerning{
    [self setAttributes:@{NSKernAttributeName : @(kerning)} range:self.fullRange];
}

-(void)setUnderlineStyle:(NSUnderlineStyle)underlineStyle{
    [self setAttributes:@{NSUnderlineStyleAttributeName : @(underlineStyle)} range:self.fullRange];
}

-(void)setStrikethroughStyle:(NSUnderlineStyle)strikethroughStyle{
    [self setAttributes:@{NSStrikethroughStyleAttributeName : @(strikethroughStyle)} range:self.fullRange];
}

-(void)setStrokeColor:(UIColor *)strokeColor{
    [self setAttributes:@{NSStrokeColorAttributeName : strokeColor} range:self.fullRange];
}

-(void)setStrokeWidth:(CGFloat)strokeWidth{
    [self setAttributes:@{NSStrokeWidthAttributeName : @(strokeWidth)} range:self.fullRange];
}

-(void)setShadow:(NSShadow *)shadow{
    [self setAttributes:@{NSShadowAttributeName : shadow} range:self.fullRange];
}

-(void)setTextEffect:(NSString *)textEffect{
    [self setAttributes:@{NSTextEffectAttributeName : textEffect} range:self.fullRange];
}

-(void)setTextAttachment:(NSTextAttachment *)textAttachment{
    [self setAttributes:@{NSAttachmentAttributeName : textAttachment} range:self.fullRange];
}

-(void)setLink:(NSURL *)link{
    [self setAttributes:@{NSLinkAttributeName : link} range:self.fullRange];
}

-(void)setBaselineOffset:(CGFloat)baselineOffset{
    [self setAttributes:@{NSBaselineOffsetAttributeName : @(baselineOffset)} range:self.fullRange];
}

-(void)setUnderlineColor:(UIColor *)underlineColor{
    [self setAttributes:@{NSUnderlineColorAttributeName : underlineColor} range:self.fullRange];
}

-(void)setStrikethroughColor:(UIColor *)strikethroughColor{
    [self setAttributes:@{NSStrikethroughColorAttributeName : strikethroughColor} range:self.fullRange];
}

-(void)setObliqueness:(CGFloat)obliqueness{
    [self setAttributes:@{NSObliquenessAttributeName : @(obliqueness)} range:self.fullRange];
}

-(void)setExpansion:(CGFloat)expansion{
    [self setAttributes:@{NSExpansionAttributeName : @(expansion)} range:self.fullRange];
}

-(NSRange)fullRange
{
    return NSMakeRange(0, self.length);
}

+(NSMutableAttributedString*)concatenate:(NSArray*)strings{
    NSMutableAttributedString *returnString = [[NSMutableAttributedString alloc]init];
    for (NSAttributedString *string in strings) {
        [returnString appendAttributedString:string];
    }
    return returnString;
}

@end
