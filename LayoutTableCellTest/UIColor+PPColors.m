
#import "UIColor+PPColors.h"

@implementation UIColor (PPColors)

+ (UIColor*)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    CGFloat alpha = (3 + arc4random() % 5) / 10.0; // 0.3 to 0.7
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:alpha];
    return color;
}

+ (UIColor *)defaultTintColor {
    return [UIColor colorWithHue:139.0/360.0 saturation:1.0 brightness:53.0/100.0 alpha:1.0];
}

+(UIColor *)tabBarControllerSelectedStateColor {
    return [UIColor colorWithRed:(103.0/255.0) green:(169.0/255.0) blue:0.0 alpha:1.0];
}

+(UIColor *)residentCellBackgroundColor{
    return [UIColor colorWithRed:254/255.0 green:252/255.0 blue:171/255.0 alpha:1.0];
}

+ (UIColor *)tableCellDefaultBackgroundColor
{
    return [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:1.0];
}

+ (UIColor *)tableCellSelectedBackgroundColor
{
    return [UIColor colorWithRed:239/255.0 green:239/255.0 blue:239/255.0 alpha:1.0];
}

#pragma mark -
#pragma mark vitals

+(UIColor *)vitalCellBackgroundColor{
    return [UIColor colorWithRed:(247./255.) green:(247./255.) blue:(247./255.) alpha:1.0];
}

+ (UIColor *)vitalDetailsCellExceptionBackgroundColor {
    return [UIColor colorWithRed:(255./255.) green:(232./255.) blue:(173./255.) alpha:1.0];
}

+ (UIColor *)vitalDetailsCellBackgroundColor {
    return [UIColor colorWithWhite:244.8 alpha:1.];
}


+ (UIColor *)vitalBlankCellBackgroundColor
{
    return [UIColor colorWithWhite:1.0f alpha:0.];
}

+ (UIColor *)vitalsDetailsTableHeaderColor
{
    return [UIColor colorWithWhite:.8 alpha:1.];
}

+(UIColor *)vitalLineColor
{
    //return [UIColor grayColor];
    //return [UIColor colorWithRed:52.0/255.0 green:52.0/255.0 blue:52.0/255.0 alpha:1.0];
    return [UIColor colorWithRed:102.0/255.0 green:102.0/255.0 blue:102.0/255.0 alpha:1.0];
}

+(UIColor *)vitalLinePointColor
{
    // Blue
    return [UIColor colorWithRed:51.0/255.0 green:53.0/255.0 blue:204.0/255.0 alpha:1.0];
}

+(UIColor *)vitalLinePointSecondaryColor
{
    // Green
    return [UIColor colorWithRed:102.0/255.0 green:153.0/255.0 blue:0.0/255.0 alpha:1.0];
}

+ (UIColor *)missingValuesMessageBackgroundViewColor
{
    return [UIColor colorWithWhite:249./255. alpha:.6];
}

#pragma mark - Orders
+ (UIColor *)colourForOrdersTableHeaders {
    return [UIColor colorWithWhite:0.9 alpha:0.9];
}

+ (UIColor *)holdOrderDefaultLabelColor {
    return [UIColor colorWithWhite:0.76 alpha:1.];
}

+ (UIColor *)sharedSupplyTableViewColor {
    return [UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1.0];
}

#pragma mark - Order Review
+ (UIColor *)draftOrderStatusGreenColor
{
    return [UIColor colorWithRed:85.0/255.0 green:142.0/255.0 blue:40.0/255.0 alpha:1.0];
}

+ (UIColor *)resumeOrderReviewButtonBackgroundColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)signButtonBackgroundColor
{
    return [UIColor colorWithRed:102./255. green:157./255. blue:61./255. alpha:1.];
}


+ (UIColor *)discontinueOrderReviewButtonBackgroundColor
{
    return [UIColor colorWithRed:174./255. green:59./255. blue:19./255. alpha:1.];
}

+ (UIColor *)discontinueOrderReviewDisabledButtonBackgroundColor
{
    return [UIColor colorWithRed:174./255. green:59./255. blue:19./255. alpha:0.40];
}

#pragma mark - Amendments

+ (UIColor *)createAmendmentButtonDefaultColor
{
    return [UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1.0];
}

+ (UIColor *)createAmendmentButtonSelectedColor
{
    return [UIColor colorWithRed:214.0/255.0 green:214.0/255.0 blue:214.0/255.0 alpha:1.0];
}

+ (UIColor *)deleteAmendmentRedColor
{
    return [UIColor colorWithRed:233.0/255.0 green:19.0/255.0 blue:34.0/255.0 alpha:1.0];
}

#pragma mark - Profile

+ (UIColor *)profileBlankCellBackgroundColor
{
    return [UIColor colorWithWhite:1.0f alpha:1.0f];
}

#pragma mark - Dashboard

+ (UIColor *)dashboardTextColor
{
    return [UIColor colorWithRed:96.0/255.0 green:96.0/255.0 blue:96.0/255.0 alpha:1.0];
}

+ (UIColor *)dashboardBadgeColor
{
    return [UIColor colorWithRed:200.0/255.0 green:37.0/255.0 blue:6.0/255.0 alpha:1.0];
}

#pragma mark - iPhone Order Signing
+ (UIColor*) orderSigningiPhoneEnabledButtonColor
{
    return [UIColor colorWithRed:1.0/255.0 green:135.0/255.0 blue:69.0/255.0 alpha:1.0];
}

+ (UIColor*) orderSigningiPhoneDisabledButtonColor
{
    return [UIColor colorWithRed:238.0/255.0 green:244.0/255.0 blue:249.0/255.0 alpha:1.0];
}

+ (UIColor*)orderSigningiPhoneTableCellSelectedColor
{
    return [UIColor colorWithRed:238.0/255.0 green:244.0/255.0 blue:249.0/255.0 alpha:1.0];
}

+ (UIColor*) secondaryResidentLineTextColor
{
    return [UIColor colorWithRed:83/255.0 green:88/255.0 blue:95/255.0 alpha:1.0];
}

+ (UIColor*)orderSigningBadgeColour
{
    return [UIColor colorWithRed:150/255.0 green:163/255.0 blue:175/255.0 alpha:1.0];
}

+ (UIColor*)signOrdersBadgeColor
{
    return [UIColor colorWithRed:197.0/255.0 green:39.0/255.0 blue:20.0/255.0 alpha:1.0];
}


#pragma mark - login
+ (UIColor*)loginUserAccountCellBackgroundColor
{
    return [UIColor colorWithRed:247/255.0 green:247/255.0 blue:247/255.0 alpha:1.0];
}

+ (UIColor*)residentDetailsOrdersTableViewHeaderCellBgColor;
{
    return [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1.0];
}


#pragma mark - confirm logout popover

+ (UIColor*)confirmLogoutBackgroundColor
{
    return [UIColor colorWithRed:0.0 green:136.0/255.0 blue:43.0/255.0 alpha:1.0];
}

+ (UIColor*)cancelLogoutButtonBackgroundColor
{
    return [UIColor colorWithRed:83.0/255.0 green:88.0/255.0 blue:95.0/255.0 alpha:1.0];
}

#pragma mark - Vital Cell colours
+ (UIColor *)vitalsExceptionColor {
    return [UIColor colorWithRed:200.0/255.0 green:37.0/255.0 blue:6.0/255.0 alpha:1.0];
}


@end
