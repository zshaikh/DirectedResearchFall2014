package c.m.x.a.iab;

import java.lang.reflect.*;
import android.content.*;

final class v implements InvocationHandler
{
    final /* synthetic */ y a;
    final /* synthetic */ u b;
    
    v(final u b, final y a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public final Object invoke(final Object o, final Method method, final Object[] array) {
        final String name = method.getName();
        if (name.equals("onActivityResult")) {
            this.a.a((int)array[0], (int)array[1], (Intent)array[2]);
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
