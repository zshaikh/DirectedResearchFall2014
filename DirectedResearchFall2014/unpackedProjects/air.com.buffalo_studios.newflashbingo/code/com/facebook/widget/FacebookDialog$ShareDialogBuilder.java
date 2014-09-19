package com.facebook.widget;

import android.app.*;
import java.util.*;

public class FacebookDialog$ShareDialogBuilder extends FacebookDialog$ShareDialogBuilderBase<FacebookDialog$ShareDialogBuilder>
{
    public FacebookDialog$ShareDialogBuilder(final Activity activity) {
        super(activity);
    }
    
    @Override
    EnumSet<? extends FacebookDialog$DialogFeature> getDialogFeatures() {
        return EnumSet.of((FacebookDialog$DialogFeature)FacebookDialog$ShareDialogFeature.SHARE_DIALOG);
    }
}
