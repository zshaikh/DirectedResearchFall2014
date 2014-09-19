package c.m.x.a.gv;

import android.content.*;

final class ah
{
    final IntentFilter a;
    final BroadcastReceiver b;
    boolean c;
    
    ah(final IntentFilter a, final BroadcastReceiver b) {
        super();
        this.a = a;
        this.b = b;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("Receiver{");
        sb.append(this.b);
        sb.append(" filter=");
        sb.append(this.a);
        sb.append("}");
        return sb.toString();
    }
}
