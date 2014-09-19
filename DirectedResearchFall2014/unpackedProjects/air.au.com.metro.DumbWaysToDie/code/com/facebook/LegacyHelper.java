package com.facebook;

import android.os.*;

public class LegacyHelper
{
    @Deprecated
    public static void extendTokenCompleted(final Session session, final Bundle bundle) {
        session.extendTokenCompleted(bundle);
    }
}
