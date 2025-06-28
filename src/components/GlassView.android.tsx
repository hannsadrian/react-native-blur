import React, { forwardRef } from 'react';
import { View, ViewProps } from 'react-native';

export type GlassViewProps = ViewProps & {
    tintColor?: string;
    interactive?: boolean;
};

const GlassView = forwardRef<View, GlassViewProps>((props, ref) => {
    console.warn('GlassView is not implemented on Android');
    return <View {...props} ref={ref} />;
});

export default GlassView;
