package c.m.x.a.iab;

import com.adobe.fre.*;
import android.util.*;
import java.lang.reflect.*;

public final class u implements z
{
    private static String c;
    FREContext a;
    y b;
    
    static {
        u.c = "[MMGAPA]";
    }
    
    public u(final FREContext a) {
        super();
        this.a = a;
    }
    
    @Override
    public final void a(final y b) {
        while (true) {
            this.b = b;
            while (true) {
                Label_0363: {
                    Object value;
                    try {
                        final Field declaredField = this.a.getActivity().getClass().getDeclaredField("sAndroidActivityWrapper");
                        declaredField.setAccessible(true);
                        value = declaredField.get(null);
                        if (value == null) {
                            break Label_0363;
                        }
                        if (value == null) {
                            Log.e(u.c, "Could not discover AIR container.");
                            return;
                        }
                    }
                    catch (Exception ex) {
                        Log.e(u.c, "Exception hooking AIR container.");
                        return;
                    }
                    while (true) {
                        while (true) {
                            int n = 0;
                            Label_0369: {
                                try {
                                    final Class<?>[] declaredClasses = value.getClass().getDeclaredClasses();
                                    Object proxyInstance = null;
                                    Method[] methods = null;
                                    Block_8: {
                                        for (int i = 0; i < declaredClasses.length; ++i) {
                                            if (declaredClasses[i].getName().contains("ActivityResultCallback")) {
                                                proxyInstance = Proxy.newProxyInstance(declaredClasses[i].getClassLoader(), new Class[] { declaredClasses[i] }, new v(this, b));
                                                methods = value.getClass().getMethods();
                                                n = 0;
                                                if (n < methods.length) {
                                                    break Block_8;
                                                }
                                            }
                                            else if (declaredClasses[i].getName().contains("StateChangeCallback")) {
                                                final Object proxyInstance2 = Proxy.newProxyInstance(declaredClasses[i].getClassLoader(), new Class[] { declaredClasses[i] }, new w(this, b));
                                                final Method[] methods2 = value.getClass().getMethods();
                                                for (int j = 0; j < methods2.length; ++j) {
                                                    if (methods2[j].getName().contains("addActivityStateChangeListner")) {
                                                        methods2[j].invoke(value, proxyInstance2);
                                                    }
                                                }
                                            }
                                        }
                                        return;
                                    }
                                    if (methods[n].getName().contains("addActivityResultListener")) {
                                        methods[n].invoke(value, proxyInstance);
                                    }
                                    break Label_0369;
                                }
                                catch (InvocationTargetException ex2) {
                                    Log.e(u.c, "Invocation target exception.");
                                    return;
                                }
                                catch (Exception ex3) {
                                    Log.e(u.c, "Failed to get the statechange class.");
                                    return;
                                }
                                break;
                            }
                            ++n;
                            continue;
                        }
                    }
                }
                Object value = null;
                continue;
            }
        }
    }
    
    @Override
    public final void a(final String s, final String s2) {
        this.a.dispatchStatusEventAsync(s, s2);
    }
}
