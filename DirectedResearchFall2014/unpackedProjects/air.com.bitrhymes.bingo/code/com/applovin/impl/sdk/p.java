package com.applovin.impl.sdk;

import java.util.concurrent.atomic.*;
import java.util.concurrent.*;
import java.io.*;

class p extends Thread
{
    final /* synthetic */ AtomicReference a;
    final /* synthetic */ CountDownLatch b;
    final /* synthetic */ n c;
    
    p(final n c, final String name, final AtomicReference a, final CountDownLatch b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super(name);
    }
    
    @Override
    public void run() {
        try {
            final InputStream inputStream = new ProcessBuilder(new String[] { "/system/bin/cat", "/proc/cpuinfo" }).start().getInputStream();
            final byte[] b = new byte[1024];
            final int read = inputStream.read(b);
            String s = "";
            int read2;
            for (int i = read; i > 0; i = read2) {
                final String string = s + new String(b, 0, i);
                read2 = inputStream.read(b);
                s = string;
            }
            inputStream.close();
            this.a.set(s);
        }
        catch (Exception ex) {
            this.c.e.e("DataCollector", "Unable to collect CPU into", ex);
        }
        finally {
            this.b.countDown();
        }
    }
}
