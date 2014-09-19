package c.m.x.a.gv;

import android.os.*;
import android.content.*;
import android.util.*;
import android.net.*;
import java.util.*;

final class af extends Handler
{
    final /* synthetic */ ae a;
    
    af(final ae a, final Looper looper) {
        this.a = a;
        super(looper);
    }
    
    public final void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                super.handleMessage(message);
            }
            case 1: {
                ae.a(this.a);
            }
        }
    }
}
