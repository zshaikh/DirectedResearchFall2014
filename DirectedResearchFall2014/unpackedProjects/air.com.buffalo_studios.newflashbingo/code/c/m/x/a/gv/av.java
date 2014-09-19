package c.m.x.a.gv;

import com.adobe.fre.*;
import android.util.*;
import java.lang.reflect.*;

public final class av
{
    private static String c;
    FREContext a;
    ay b;
    
    static {
        av.c = "[MMGAPA]";
    }
    
    public av(final FREContext a) {
        super();
        this.a = a;
    }
    
    public final void a(final ay b) {
        while (true) {
            this.b = b;
            while (true) {
                Label_0367: {
                    Object value;
                    try {
                        final Field declaredField = this.a.getActivity().getClass().getDeclaredField("sAndroidActivityWrapper");
                        declaredField.setAccessible(true);
                        value = declaredField.get(null);
                        if (value == null) {
                            break Label_0367;
                        }
                        if (value == null) {
                            Log.e(av.c, "Could not discover AIR container.");
                            return;
                        }
                    }
                    catch (Exception ex) {
                        Log.e(av.c, "Exception hooking AIR container.");
                        ex.printStackTrace();
                        return;
                    }
                    while (true) {
                        while (true) {
                            int n = 0;
                            Label_0373: {
                                try {
                                    final Class<?>[] declaredClasses = value.getClass().getDeclaredClasses();
                                    Object proxyInstance = null;
                                    Method[] methods = null;
                                    Block_8: {
                                        for (int i = 0; i < declaredClasses.length; ++i) {
                                            if (declaredClasses[i].getName().contains("ActivityResultCallback")) {
                                                proxyInstance = Proxy.newProxyInstance(declaredClasses[i].getClassLoader(), new Class[] { declaredClasses[i] }, new aw(this, b));
                                                methods = value.getClass().getMethods();
                                                n = 0;
                                                if (n < methods.length) {
                                                    break Block_8;
                                                }
                                            }
                                            else if (declaredClasses[i].getName().contains("StateChangeCallback")) {
                                                final Object proxyInstance2 = Proxy.newProxyInstance(declaredClasses[i].getClassLoader(), new Class[] { declaredClasses[i] }, new ax(this, b));
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
                                    break Label_0373;
                                }
                                catch (InvocationTargetException ex2) {
                                    Log.e(av.c, "Invocation target exception.");
                                    return;
                                }
                                catch (Exception ex3) {
                                    Log.e(av.c, "Failed to get the statechange class.");
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
