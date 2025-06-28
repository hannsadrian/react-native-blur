#import <UIKit/UIKit.h>

#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#endif // RCT_NEW_ARCH_ENABLED

@interface GlassView :
#ifdef RCT_NEW_ARCH_ENABLED
    RCTViewComponentView
#else
    UIView
#endif // RCT_NEW_ARCH_ENABLED

@property (nonatomic, copy, nullable) NSNumber *interactive;
@property (nonatomic, copy, nullable) UIColor *tintColor;

@property (nonatomic, strong, nullable) UIVisualEffectView *effectView;

- (void)updateEffect;

@end
