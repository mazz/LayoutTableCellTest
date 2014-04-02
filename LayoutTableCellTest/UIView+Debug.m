#import "UIColor+PPColors.h"

@implementation UIView (Debug)
+ (void) colorViewsRandomly:(UIView*)view {
    view.backgroundColor = [UIColor randomColor];
    for (UIView *subview in view.subviews) {
        [UIView colorViewsRandomly:subview];
    }
}

+ (void) logViewRect:(UIView*)view level:(NSInteger)level {
    NSString *indentation = [@"" stringByPaddingToLength:level * 2 withString:@"  " startingAtIndex:0];
    NSLog(@"%@%@: x:%.0f y:%.0f w:%.0f h:%.0f", indentation, NSStringFromClass(view.class), CGRectGetMinX(view.frame), CGRectGetMinY(view.frame), CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
    for (UIView *subview in view.subviews) {
        [UIView logViewRect:subview level:level + 1];
    }
}
@end
