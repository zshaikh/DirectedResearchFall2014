package com.vungle.sdk;

final class s
{
    private static int a;
    private static Thread b;
    private static a c;
    
    static {
        s.a = 10000;
        s.b = null;
    }
    
    public static void a() {
        synchronized (s.class) {
            if (s.b == null) {
                s.c = new a((byte)0);
                (s.b = new Thread(s.c, "VungleSDKStatusThread")).setPriority(1);
                s.b.setDaemon(true);
                s.b.start();
            }
        }
    }
    
    public static void b() {
        synchronized (s.class) {
            if (s.b != null) {
                s.c.a();
                s.c = null;
                s.b = null;
            }
        }
    }
    
    static final class a implements Runnable
    {
        private boolean a;
        
        private a() {
            super();
            this.a = true;
        }
        
        public final void a() {
            this.a = false;
        }
        
        @Override
        public final void run() {
            while (this.a) {
                if (!n.d() && !n.j && !n.k) {
                    VungleConnectionHandler.e();
                }
                try {
                    Thread.sleep(s.a);
                }
                catch (InterruptedException ex) {}
            }
        }
    }
}
