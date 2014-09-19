package v2.com.playhaven.utils;

import android.content.*;

public class PHConversionUtils
{
    public static float dipToPixels(final Context context, final float n) {
        return n * context.getResources().getDisplayMetrics().density;
    }
}
