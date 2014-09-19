package com.fiksu.asotracking;

import android.content.*;

class PurchaseEventTracker extends EventTracker
{
    PurchaseEventTracker(final Context context, final String s, final Double n, final String s2) {
        super(context, FiksuEventType.PURCHASE.getName());
        this.addParameter(FiksuEventParameter.USERNAME, s);
        this.addParameter(FiksuEventParameter.FVALUE, n.toString());
        this.addParameter(FiksuEventParameter.TVALUE, s2);
    }
}
