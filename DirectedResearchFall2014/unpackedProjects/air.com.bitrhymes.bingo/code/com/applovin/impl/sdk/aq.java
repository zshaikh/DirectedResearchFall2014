package com.applovin.impl.sdk;

class aq implements Runnable
{
    final /* synthetic */ al a;
    private final String b;
    private final an c;
    private final am d;
    
    aq(final al a, final an c, final am d) {
        this.a = a;
        super();
        this.b = c.e();
        this.c = c;
        this.d = d;
    }
    
    @Override
    public void run() {
        while (true) {
            final long currentTimeMillis = System.currentTimeMillis();
            while (true) {
                try {
                    j.a();
                    if (this.a.a.c()) {
                        break;
                    }
                    if (this.a.a.isEnabled()) {
                        this.a.b.i(this.b, "Task  started exection...");
                        this.c.run();
                        final long lng = System.currentTimeMillis() - currentTimeMillis;
                        this.a.b.i(this.b, "Task executed successfully in " + lng + "ms.");
                        final aa b = this.a.a.b();
                        b.a(this.b + "_count");
                        b.a(this.b + "_time", lng);
                        return;
                    }
                    if (this.a.a.d()) {
                        this.a.a.e();
                        this.c.a();
                        return;
                    }
                }
                catch (Throwable t) {
                    this.a.b.e(this.b, "Task failed execution in " + (System.currentTimeMillis() - currentTimeMillis) + "ms.", t);
                    return;
                }
                this.a.b.w(this.b, "Task not executed, SDK is disabled");
                continue;
            }
        }
        this.a.b.i(this.b, "Task re-scheduled...");
        this.a.a(this.c, this.d, 2000L);
    }
}
