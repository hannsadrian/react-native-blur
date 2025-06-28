import BlurViewUntyped from './components/BlurView';
import VibrancyViewUntyped from './components/VibrancyView';
import GlassViewUntyped from './components/GlassView';
import type { View } from 'react-native'

import type { BlurViewProps as BlurViewPropsIOS } from './components/BlurView.ios';
import type { BlurViewProps as BlurViewPropsAndroid } from './components/BlurView.android';
import type { VibrancyViewProps as VibrancyViewPropsIOS } from './components/VibrancyView.ios';
import type { GlassViewProps as GlassViewPropsIOS } from './components/GlassView.ios';

type BlurViewProps = BlurViewPropsIOS | BlurViewPropsAndroid;
type VibrancyViewProps = VibrancyViewPropsIOS;
type GlassViewProps = GlassViewPropsIOS;

const BlurView = BlurViewUntyped as React.ForwardRefExoticComponent<BlurViewProps & React.RefAttributes<View>>
const VibrancyView = VibrancyViewUntyped as React.ForwardRefExoticComponent<VibrancyViewProps & React.RefAttributes<View>>
const GlassView = GlassViewUntyped as React.ForwardRefExoticComponent<GlassViewProps & React.RefAttributes<View>>

export { BlurView, VibrancyView, GlassView };
export type { BlurViewProps, VibrancyViewProps, GlassViewProps };