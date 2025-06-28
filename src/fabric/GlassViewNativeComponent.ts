import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type { ViewProps, HostComponent, ColorValue } from 'react-native';

interface NativeProps extends ViewProps {
  tintColor?: ColorValue;
  interactive?: boolean;
}

export default codegenNativeComponent<NativeProps>('GlassView', {
  excludedPlatforms: ['android'],
}) as HostComponent<NativeProps>;
