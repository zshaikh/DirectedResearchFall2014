package com.flurry.android;

public class FlurryAgent$FlurryDefaultExceptionHandler implements UncaughtExceptionHandler
{
    private UncaughtExceptionHandler bH;
    
    FlurryAgent$FlurryDefaultExceptionHandler() {
        super();
        this.bH = Thread.getDefaultUncaughtExceptionHandler();
    }
    
    @Override
    public void uncaughtException(final Thread thread, final Throwable t) {
        while (true) {
            try {
                FlurryAgent.az.a(t);
                if (this.bH != null) {
                    this.bH.uncaughtException(thread, t);
                }
            }
            catch (Throwable t2) {
                db.b("FlurryAgent", "", t2);
                continue;
            }
            break;
        }
    }
}
