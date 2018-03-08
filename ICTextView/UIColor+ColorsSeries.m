//
//  UIColor+ColorsSeries.m
//  Highlightr
//
//  Created by Bruno Philipe on 6/3/18.
//

#import "UIColor+ColorsSeries.h"

@implementation UIColor (ColorsSeries)

+ (UIColor *)colorSeriesWithIndex:(NSUInteger)index
{
	CGFloat hue = (90 + ((index % 2 == 0 ? 80 : -40) * index) % 360) / 360.0;
	return [UIColor colorWithHue:hue saturation:1.0 brightness:0.66 alpha:1.0];
}

@end
