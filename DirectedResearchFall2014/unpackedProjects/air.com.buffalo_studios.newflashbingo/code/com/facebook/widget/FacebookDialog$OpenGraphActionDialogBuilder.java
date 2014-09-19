package com.facebook.widget;

import android.app.*;
import com.facebook.model.*;
import java.util.*;

public class FacebookDialog$OpenGraphActionDialogBuilder extends FacebookDialog$OpenGraphDialogBuilderBase<FacebookDialog$OpenGraphActionDialogBuilder>
{
    public FacebookDialog$OpenGraphActionDialogBuilder(final Activity activity, final OpenGraphAction openGraphAction, final String s) {
        super(activity, openGraphAction, s);
    }
    
    public FacebookDialog$OpenGraphActionDialogBuilder(final Activity activity, final OpenGraphAction openGraphAction, final String s, final String s2) {
        super(activity, openGraphAction, s, s2);
    }
    
    @Override
    EnumSet<? extends FacebookDialog$DialogFeature> getDialogFeatures() {
        return EnumSet.of((FacebookDialog$DialogFeature)FacebookDialog$OpenGraphActionDialogFeature.OG_ACTION_DIALOG);
    }
}
