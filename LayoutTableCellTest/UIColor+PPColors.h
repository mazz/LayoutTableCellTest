
#import <UIKit/UIKit.h>

@interface UIColor (PPColors)

+ (UIColor*)randomColor;

+ (UIColor *)defaultTintColor;

+(UIColor *)tabBarControllerSelectedStateColor;

+(UIColor *)residentCellBackgroundColor;

// table views/table cells
+ (UIColor *)tableCellDefaultBackgroundColor;
+ (UIColor *)tableCellSelectedBackgroundColor;

#pragma mark -
#pragma mark vitals

+ (UIColor *)vitalsDetailsTableHeaderColor;
+ (UIColor *)vitalCellBackgroundColor;
+ (UIColor *)vitalDetailsCellExceptionBackgroundColor;
+ (UIColor *)vitalDetailsCellBackgroundColor;
+ (UIColor *)vitalBlankCellBackgroundColor;
+ (UIColor *)vitalLineColor;
+ (UIColor *)vitalLinePointColor;
+ (UIColor *)vitalLinePointSecondaryColor;
+ (UIColor *)missingValuesMessageBackgroundViewColor;

#pragma mark - Orders
+ (UIColor *)colourForOrdersTableHeaders;
+ (UIColor *)holdOrderDefaultLabelColor;
+ (UIColor *)sharedSupplyTableViewColor;

#pragma mark - Orders Review
+ (UIColor *)draftOrderStatusGreenColor;
+ (UIColor *)resumeOrderReviewButtonBackgroundColor;
+ (UIColor *)discontinueOrderReviewButtonBackgroundColor;
+ (UIColor *)discontinueOrderReviewDisabledButtonBackgroundColor;

#pragma maark - Amendments
+ (UIColor *)createAmendmentButtonDefaultColor;
+ (UIColor *)createAmendmentButtonSelectedColor;
+ (UIColor *)deleteAmendmentRedColor;

+ (UIColor *)signButtonBackgroundColor;
#pragma mark - Profile

+ (UIColor *)profileBlankCellBackgroundColor;

#pragma mark - Dashboard

+ (UIColor *)dashboardTextColor;
+ (UIColor *)dashboardBadgeColor;

#pragma mark - iphone order signing

+ (UIColor*)orderSigningiPhoneEnabledButtonColor;
+ (UIColor*)orderSigningiPhoneDisabledButtonColor;
+ (UIColor*)orderSigningiPhoneTableCellSelectedColor;
+ (UIColor*)secondaryResidentLineTextColor;
+ (UIColor*)orderSigningBadgeColour;

#pragma mark - login 
+ (UIColor*)loginUserAccountCellBackgroundColor;

+ (UIColor*)residentDetailsOrdersTableViewHeaderCellBgColor;

+ (UIColor*)signOrdersBadgeColor;


#pragma mark - confirm logout popover
+ (UIColor*)confirmLogoutBackgroundColor;
+ (UIColor*)cancelLogoutButtonBackgroundColor;

#pragma mark - Vital Cell colours
+ (UIColor *)vitalsExceptionColor;


@end
