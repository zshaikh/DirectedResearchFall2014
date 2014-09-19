package com.fusepowered.m2.m2l.factories;

import android.content.*;
import com.fusepowered.m2.m2l.*;

public class MraidViewFactory
{
    protected static MraidViewFactory instance;
    
    static {
        MraidViewFactory.instance = new MraidViewFactory();
    }
    
    public static MraidView create(final Context context, final AdConfiguration adConfiguration) {
        return MraidViewFactory.instance.internalCreate(context, adConfiguration);
    }
    
    public static MraidView create(final Context context, final AdConfiguration adConfiguration, final MraidView.ExpansionStyle expansionStyle, final MraidView.NativeCloseButtonStyle nativeCloseButtonStyle, final MraidView.PlacementType placementType) {
        return MraidViewFactory.instance.internalCreate(context, adConfiguration, expansionStyle, nativeCloseButtonStyle, placementType);
    }
    
    @Deprecated
    public static void setInstance(final MraidViewFactory instance) {
        MraidViewFactory.instance = instance;
    }
    
    protected MraidView internalCreate(final Context context, final AdConfiguration adConfiguration) {
        return new MraidView(context, adConfiguration);
    }
    
    protected MraidView internalCreate(final Context context, final AdConfiguration adConfiguration, final MraidView.ExpansionStyle expansionStyle, final MraidView.NativeCloseButtonStyle nativeCloseButtonStyle, final MraidView.PlacementType placementType) {
        return new MraidView(context, adConfiguration, expansionStyle, nativeCloseButtonStyle, placementType);
    }
}
