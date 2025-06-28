#import "GlassViewManager.h"
#import "GlassView.h"

@implementation GlassViewManager

RCT_EXPORT_MODULE(GlassView)

- (UIView *)view
{
  return [[GlassView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(interactive, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(tintColor, UIColor);

@end
