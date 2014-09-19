package com.applovin.impl.adview;

import android.view.*;

class w implements View$OnTouchListener
{
    final /* synthetic */ v a;
    
    w(final v a) {
        this.a = a;
        super();
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        int n;
        if (motionEvent.getAction() == 2) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            return true;
        }
        if (!view.hasFocus()) {
            view.requestFocus();
        }
        return false;
    }
}
