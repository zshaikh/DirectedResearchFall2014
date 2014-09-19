package c.m.x.a.gv;

import java.lang.reflect.*;

final class ax implements InvocationHandler
{
    final /* synthetic */ ay a;
    final /* synthetic */ av b;
    
    ax(final av b, final ay a) {
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
                this.a.a();
            }
            else if (string.equals("RESTARTED")) {
                final ay a = this.a;
            }
            else if (string.equals("RESUMED")) {
                this.a.b();
            }
            else if (string.equals("PAUSED")) {
                final ay a2 = this.a;
            }
            else if (string.equals("STOPPED")) {
                final ay a3 = this.a;
            }
            else if (string.equals("DESTROYED")) {
                final ay a4 = this.a;
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
