//
//  LayoutTableViewCell.m
//  LayoutTableCellTest
//
//  Created by Michael Hanna on 2/26/2014.
//  Copyright (c) 2014 Michael Hanna. All rights reserved.
//

#import "LayoutTableViewCell.h"
#import "UIView+FLKAutoLayout.h"
#import "UIView+Debug.h"
#import "Util.h"

@interface LayoutTableViewCell ()
@property (nonatomic, assign) BOOL didSetupConstraints;
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) LoremIpsum *lorem;
@property (nonatomic, strong) UILabel *bodyLabel;

@end

@implementation LayoutTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.lorem = [[LoremIpsum alloc] init];

        self.containerView = [[UIView alloc] init];
        self.containerView.translatesAutoresizingMaskIntoConstraints = NO;
//        self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.containerView];
        
        [self.containerView alignTop:@"20" leading:@"30" bottom:@"-20" trailing:@"-30" toView:self.contentView];
    }
    return self;
}

- (void)updateConstraints
{
    [super updateConstraints];
    
    if (self.didSetupConstraints) {
        return;
    }
    
    // Note: if the constraints you add below require a larger cell size than the current size (which is likely to be the default size {320, 44}), you'll get an exception.
    // As a fix, you can temporarily increase the size of the cell's contentView so that this does not occur using code similar to the line below.
    //      See here for further discussion: https://github.com/Alex311/TableCellWithAutoLayout/commit/bde387b27e33605eeac3465475d2f2ff9775f163#commitcomment-4633188
    // self.contentView.bounds = CGRectMake(0.0f, 0.0f, 99999.0f, 99999.0f);
    
    
    UIView *viewBox = [[UIView alloc] init];
    
    // translatesAutoresizingMaskIntoConstraints is a transitionary attribute to help developers move from traditional auto resizing masks to
    // auto layout. They are set at runtime when "Use Autolayout" is checked in a xib file.
    // They tend to interfere with programmatic auto layout
    
    // for new views translatesAutoresizingMaskIntoConstraints == YES so turn this off
    viewBox.translatesAutoresizingMaskIntoConstraints = NO;
        
    [self.containerView addSubview:viewBox];
    [viewBox alignTop:@"0" leading:@"0" toView:self.containerView];
    [viewBox alignTrailingEdgeWithView:self.containerView predicate:@"0"];
//    [viewBox constrainHeight:@"0"];
    
    UILabel *label = [[UILabel alloc] init];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.font = [UIFont randomFont];
    label.text = [self.lorem words:arc4random() % 10 + 100];
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.numberOfLines = 0;

    [viewBox addSubview:label];
    [label alignTop:@"0" leading:@"0" toView:viewBox];
    [label alignTrailingEdgeWithView:viewBox predicate:@"0"];
    
    
    [UIView alignBottomEdgesOfViews:@[viewBox, label]];
    self.bodyLabel = label;
    [viewBox alignBottomEdgeWithView:self.contentView predicate:@"-20"];
    self.didSetupConstraints = YES;
    
    [UIView colorViewsRandomly:self.contentView];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Make sure the contentView does a layout pass here so that its subviews have their frames set, which we
    // need to use to set the preferredMaxLayoutWidth below.
    [self.contentView setNeedsLayout];
    [self.contentView layoutIfNeeded];
    
    // Set the preferredMaxLayoutWidth of the mutli-line bodyLabel based on the evaluated width of the label's frame,
    // as this will allow the text to wrap correctly, and as a result allow the label to take on the correct height.
    self.bodyLabel.preferredMaxLayoutWidth = CGRectGetWidth(self.bodyLabel.frame);
}

@end
