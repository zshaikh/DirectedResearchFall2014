package c.m.x.a.gv;

import android.content.*;
import android.widget.*;
import android.view.*;
import android.util.*;

final class aa extends FrameLayout
{
    private aa(final Context context) {
        super(context);
    }
    
    static ViewGroup a(final View view) {
        final aa aa = new aa(view.getContext());
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            aa.setLayoutParams(layoutParams);
        }
        view.setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        aa.addView(view);
        return (ViewGroup)aa;
    }
    
    protected final void dispatchRestoreInstanceState(final SparseArray sparseArray) {
        this.dispatchThawSelfOnly(sparseArray);
    }
    
    protected final void dispatchSaveInstanceState(final SparseArray sparseArray) {
        this.dispatchFreezeSelfOnly(sparseArray);
    }
}
