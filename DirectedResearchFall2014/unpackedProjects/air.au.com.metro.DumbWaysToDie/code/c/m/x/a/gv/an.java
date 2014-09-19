package c.m.x.a.gv;

import java.lang.reflect.*;

final class an implements InvocationHandler
{
    final /* synthetic */ ao a;
    final /* synthetic */ al b;
    
    an(final al b, final ao a) {
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
                final ao a = this.a;
            }
            else if (string.equals("RESTARTED")) {
                final ao a2 = this.a;
            }
            else if (string.equals("RESUMED")) {
                final ao a3 = this.a;
            }
            else if (string.equals("PAUSED")) {
                final ao a4 = this.a;
            }
            else if (string.equals("STOPPED")) {
                final ao a5 = this.a;
            }
            else if (string.equals("DESTROYED")) {
                final ao a6 = this.a;
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
