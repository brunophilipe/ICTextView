//
//  UIColor+IsDark.m
//  Highlightr
//
//  Created by Bruno Philipe on 13/3/18.
//

#import "UIColor+IsDark.h"

@implementation UIColor (IsDark)

- (BOOL)isDarkColor
{
	const CGFloat *componentColors = CGColorGetComponents([self CGColor]);
	return ((componentColors[0] * 299) + (componentColors[1] * 587) + (componentColors[2] * 114)) / 1000 < 0.5;
}

- (BOOL)isLightColor
{
	return ![self isDarkColor];
}

@end
