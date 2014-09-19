package com.facebook;

import java.util.concurrent.*;
import java.util.concurrent.atomic.*;

final class Settings$1 implements ThreadFactory
{
    private final AtomicInteger counter;
    
    Settings$1() {
        super();
        this.counter = new AtomicInteger(0);
    }
    
    @Override
    public final Thread newThread(final Runnable target) {
        return new Thread(target, "FacebookSdk #" + this.counter.incrementAndGet());
    }
}
