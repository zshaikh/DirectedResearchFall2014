package com.vungle.sdk;

import android.os.*;
import android.content.*;

public final class ai extends a implements am
{
    private static final String c;
    
    static {
        c = VungleIntentService.a;
    }
    
    public ai(final VungleIntentService vungleIntentService) {
        super(vungleIntentService, "Http");
    }
    
    private Message b(final ah obj) {
        final Message obtainMessage = this.b.obtainMessage(1);
        obtainMessage.obj = obj;
        return obtainMessage;
    }
    
    @Override
    protected final void a(final Intent intent) {
        final ah obj = (ah)intent.getParcelableExtra("httpRequest");
        if (obj == null) {
            final String c = ai.c;
            return;
        }
        final String c2 = ai.c;
        new StringBuilder("Queuing ").append(obj);
        this.b.sendMessage(this.b(obj));
    }
    
    @Override
    protected final void a(final Message message) {
        final ah ah = (ah)message.obj;
        if (ah == null) {
            final String c = ai.c;
            return;
        }
        ac.a().b();
        final String c2 = ai.c;
        new StringBuilder("Sending ").append(ah);
        ag.a();
        final aj a = ag.a(ah);
        final String c3 = ai.c;
        new StringBuilder("Received ").append(ah);
        ah.k().b(ah, a, this);
    }
    
    @Override
    public final void a(final ah ah) {
        this.b.sendMessage(this.b(ah));
    }
    
    @Override
    public final void a(final ah ah, final long n) {
        this.b.sendMessageDelayed(this.b(ah), n);
    }
}
