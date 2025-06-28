import React, { forwardRef } from 'react';
import { StyleSheet, View, ViewProps, ViewStyle } from 'react-native';
import NativeGlassView from '../fabric/GlassViewNativeComponent';

export type GlassViewProps = ViewProps & {
    tintColor?: string;
    interactive?: boolean;
};

const GlassView = forwardRef<View, GlassViewProps>(
    ({ style, ...rest }, ref) => (
        <NativeGlassView
            ref={ref}
            style={StyleSheet.compose(styles.transparent, style)}
            {...rest}
        />
    )
);

const styles = StyleSheet.create<{ transparent: ViewStyle }>({
    transparent: { backgroundColor: 'transparent' },
});

export default GlassView;
