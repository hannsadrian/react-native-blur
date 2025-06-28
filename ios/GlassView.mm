#import "GlassView.h"

#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTConversions.h>
#import <React/RCTFabricComponentsPlugins.h>
#import <React/RCTConvert.h>
#import <react/renderer/components/rnblurview/ComponentDescriptors.h>
#import <react/renderer/components/rnblurview/Props.h>
#import <react/renderer/components/rnblurview/RCTComponentViewHelpers.h>
#endif // RCT_NEW_ARCH_ENABLED

#ifdef RCT_NEW_ARCH_ENABLED
using namespace facebook::react;

@interface GlassView () <RCTGlassViewViewProtocol>
#else
@interface GlassView ()
#endif // RCT_NEW_ARCH_ENABLED
@end

@implementation GlassView

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    self.backgroundColor = [UIColor clearColor];
    self.layer.masksToBounds = YES;

    if (@available(iOS 26.0, *)) {
        self.effectView = [[UIVisualEffectView alloc] init];
        self.effectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.effectView.frame = frame;
        [self addSubview:self.effectView];
        [self updateEffect];
    }
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  if (self.effectView) {
    self.effectView.frame = self.bounds;
  }
}

- (void)setInteractive:(NSNumber *)interactive
{
  if (_interactive != interactive) {
    _interactive = interactive;
    [self updateEffect];
  }
}

- (void)setTintColor:(UIColor *)tintColor
{
  if (_tintColor != tintColor) {
    _tintColor = tintColor;
    [self updateEffect];
  }
}

- (void)updateEffect
{
  if (@available(iOS 26.0, *)) {
    UIGlassEffect *glassEffect = [[UIGlassEffect alloc] init];
    if (self.interactive != nil) {
        glassEffect.interactive = [self.interactive boolValue];
    }
    if (self.tintColor != nil) {
        glassEffect.tintColor = self.tintColor;
    }
    self.effectView.effect = glassEffect;
  }
}

#ifdef RCT_NEW_ARCH_ENABLED
#pragma mark - RCTComponentViewProtocol

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
  return concreteComponentDescriptorProvider<GlassViewComponentDescriptor>();
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<const GlassViewProps>(_props);
    const auto &newViewProps = *std::static_pointer_cast<const GlassViewProps>(props);

    //if (oldViewProps.tintColor != newViewProps.tintColor) {
    //    self.tintColor = [RCTConvert UIColor:newViewProps.tintColor.AsJson()];
    //}

    if (oldViewProps.interactive != newViewProps.interactive) {
        self.interactive = @(newViewProps.interactive);
    }

    [super updateProps:props oldProps:oldProps];
}
#endif

@end

#ifdef RCT_NEW_ARCH_ENABLED
Class<RCTComponentViewProtocol> GlassViewCls(void)
{
  return GlassView.class;
}
#endif
