package com.flurry.android;

abstract class bk implements Runnable
{
    public abstract void a();
    
    @Override
    public final void run() {
        try {
            this.a();
        }
        catch (Throwable t) {
            t.printStackTrace();
            db.b("FlurryAgent", "", t);
        }
    }
}
