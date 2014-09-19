package c.m.x.a.gv;

import com.adobe.fre.*;
import android.util.*;
import java.lang.reflect.*;

public final class al
{
    private static String c;
    FREContext a;
    ao b;
    
    static {
        al.c = "[MMGAPA]";
    }
    
    public al(final FREContext a) {
        super();
        this.a = a;
    }
    
    public final void a(final ao b) {
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
                            Log.e(al.c, "Could not discover AIR container.");
                            return;
                        }
                    }
                    catch (Exception ex) {
                        Log.e(al.c, "Exception hooking AIR container.");
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
                                                proxyInstance = Proxy.newProxyInstance(declaredClasses[i].getClassLoader(), new Class[] { declaredClasses[i] }, new am(this, b));
                                                methods = value.getClass().getMethods();
                                                n = 0;
                                                if (n < methods.length) {
                                                    break Block_8;
                                                }
                                            }
                                            else if (declaredClasses[i].getName().contains("StateChangeCallback")) {
                                                final Object proxyInstance2 = Proxy.newProxyInstance(declaredClasses[i].getClassLoader(), new Class[] { declaredClasses[i] }, new an(this, b));
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
                                    Log.e(al.c, "Invocation target exception.");
                                    return;
                                }
                                catch (Exception ex3) {
                                    Log.e(al.c, "Failed to get the statechange class.");
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
}
