package android.support.v4.app;

import android.app.*;
import android.content.*;
import android.view.*;
import android.graphics.*;
import android.os.*;

class ActivityOptionsCompatJB
{
    private final ActivityOptions mActivityOptions;
    
    private ActivityOptionsCompatJB(final ActivityOptions mActivityOptions) {
        super();
        this.mActivityOptions = mActivityOptions;
    }
    
    public static ActivityOptionsCompatJB makeCustomAnimation(final Context context, final int n, final int n2) {
        return new ActivityOptionsCompatJB(ActivityOptions.makeCustomAnimation(context, n, n2));
    }
    
    public static ActivityOptionsCompatJB makeScaleUpAnimation(final View view, final int n, final int n2, final int n3, final int n4) {
        return new ActivityOptionsCompatJB(ActivityOptions.makeScaleUpAnimation(view, n, n2, n3, n4));
    }
    
    public static ActivityOptionsCompatJB makeThumbnailScaleUpAnimation(final View view, final Bitmap bitmap, final int n, final int n2) {
        return new ActivityOptionsCompatJB(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, n, n2));
    }
    
    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }
    
    public void update(final ActivityOptionsCompatJB activityOptionsCompatJB) {
        this.mActivityOptions.update(activityOptionsCompatJB.mActivityOptions);
    }
}
