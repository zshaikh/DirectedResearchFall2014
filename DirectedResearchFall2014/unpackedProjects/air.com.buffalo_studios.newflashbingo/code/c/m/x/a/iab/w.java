package c.m.x.a.iab;

import java.lang.reflect.*;

final class w implements InvocationHandler
{
    final /* synthetic */ y a;
    final /* synthetic */ u b;
    
    w(final u b, final y a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public final Object invoke(final Object o, final Method method, final Object[] array) {
        final String name = method.getName();
        if (name.equals("onActivityStateChanged")) {
            final String string = array[0].toString();
            if (string.equals("STARTED")) {
                final y a = this.a;
            }
            else if (string.equals("RESTARTED")) {
                final y a2 = this.a;
            }
            else if (string.equals("RESUMED")) {
                final y a3 = this.a;
            }
            else if (string.equals("PAUSED")) {
                final y a4 = this.a;
            }
            else if (string.equals("STOPPED")) {
                final y a5 = this.a;
            }
            else if (string.equals("DESTROYED")) {
                final y a6 = this.a;
            }
        }
        else if (name.equals("equals")) {
            final Object o2 = array[0];
            if (o2 == null) {
                return false;
            }
            if (o2 == this) {
                return true;
            }
            return false;
        }
        return null;
    }
}
