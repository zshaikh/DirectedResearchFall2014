package android.support.v4.content;

import android.content.*;

class ContextCompatHoneycomb
{
    static void startActivities(final Context context, final Intent[] array) {
        context.startActivities(array);
    }
}
