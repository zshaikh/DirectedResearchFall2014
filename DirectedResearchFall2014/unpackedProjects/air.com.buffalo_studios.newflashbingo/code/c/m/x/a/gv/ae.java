package c.m.x.a.gv;

import android.os.*;
import android.content.*;
import android.util.*;
import android.net.*;
import java.util.*;

public final class ae
{
    private static final Object f;
    private static ae g;
    private final Context a;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> b;
    private final HashMap<String, ArrayList<ah>> c;
    private final ArrayList<ag> d;
    private final Handler e;
    
    static {
        f = new Object();
    }
    
    private ae(final Context a) {
        super();
        this.b = new HashMap<BroadcastReceiver, ArrayList<IntentFilter>>();
        this.c = new HashMap<String, ArrayList<ah>>();
        this.d = new ArrayList<ag>();
        this.a = a;
        this.e = new af(this, a.getMainLooper());
    }
    
    public static ae a(final Context context) {
        synchronized (ae.f) {
            if (ae.g == null) {
                ae.g = new ae(context.getApplicationContext());
            }
            return ae.g;
        }
    }
    
    public final void a(final BroadcastReceiver key) {
        while (true) {
            ArrayList<IntentFilter> list;
            int index = 0;
            int n;
            ArrayList<ah> list2;
            IntentFilter intentFilter;
            int n2 = 0;
            String action;
            int n3 = 0;
            Label_0094_Outer:Label_0053_Outer:
            while (true) {
            Label_0053:
                while (true) {
                    Label_0189:Block_8_Outer:
                    while (true) {
                        Label_0180: {
                            Label_0174: {
                                synchronized (this.b) {
                                    list = this.b.remove(key);
                                    if (list == null) {
                                        return;
                                    }
                                    break Label_0174;
                                    // iftrue(Label_0159:, index >= list.size())
                                    // iftrue(Label_0138:, n >= list2.size())
                                    // iftrue(Label_0189:, list2 == null)
                                    // iftrue(Label_0189:, list2.size() > 0)
                                    // iftrue(Label_0195:, n2 >= intentFilter.countActions())
                                    while (true) {
                                        Block_7: {
                                            Block_4: {
                                                break Block_4;
                                                break Block_7;
                                                Label_0159: {
                                                    return;
                                                }
                                            }
                                            intentFilter = list.get(index);
                                            n2 = 0;
                                            break Label_0053;
                                            Block_6: {
                                                while (true) {
                                                    action = intentFilter.getAction(n2);
                                                    list2 = this.c.get(action);
                                                    break Block_6;
                                                    Label_0138: {
                                                        this.c.remove(action);
                                                    }
                                                    break Label_0189;
                                                    continue Block_8_Outer;
                                                }
                                                list2.remove(n);
                                                n3 = n - 1;
                                                break Label_0180;
                                            }
                                            n = 0;
                                            continue Label_0053_Outer;
                                        }
                                        continue;
                                    }
                                }
                                // iftrue(Label_0167:, (ah)list2.get(n).b != key)
                                Label_0167: {
                                    n3 = n;
                                }
                                break Label_0180;
                            }
                            index = 0;
                            continue Label_0094_Outer;
                        }
                        n = n3 + 1;
                        continue Label_0053_Outer;
                    }
                    ++n2;
                    continue Label_0053;
                }
                Label_0195: {
                    ++index;
                }
                continue Label_0094_Outer;
            }
        }
    }
    
    public final void a(final BroadcastReceiver broadcastReceiver, final IntentFilter e) {
        synchronized (this.b) {
            final ah e2 = new ah(e, broadcastReceiver);
            ArrayList<IntentFilter> value = this.b.get(broadcastReceiver);
            if (value == null) {
                value = new ArrayList<IntentFilter>(1);
                this.b.put(broadcastReceiver, value);
            }
            value.add(e);
            for (int i = 0; i < e.countActions(); ++i) {
                final String action = e.getAction(i);
                ArrayList<ah> value2 = this.c.get(action);
                if (value2 == null) {
                    value2 = new ArrayList<ah>(1);
                    this.c.put(action, value2);
                }
                value2.add(e2);
            }
        }
    }
    
    public final boolean a(final Intent obj) {
        // monitorexit(hashMap)
        while (true) {
            while (true) {
                String action;
                String resolveTypeIfNeeded;
                Uri data;
                String scheme;
                Set categories;
                int n;
                ArrayList<ah> obj2;
                ArrayList<ah> list = null;
                int index;
                ah e;
                ArrayList<ah> list2;
                int match;
                String str;
                int i;
                Label_0506_Outer:Label_0482_Outer:Block_4_Outer:
                while (true) {
                Label_0506:
                    while (true) {
                    Label_0156_Outer:
                        while (true) {
                            Label_0516: {
                                while (true) {
                                Label_0313:
                                    while (true) {
                                        synchronized (this.b) {
                                            action = obj.getAction();
                                            resolveTypeIfNeeded = obj.resolveTypeIfNeeded(this.a.getContentResolver());
                                            data = obj.getData();
                                            scheme = obj.getScheme();
                                            categories = obj.getCategories();
                                            if ((0x8 & obj.getFlags()) == 0x0) {
                                                break Label_0516;
                                            }
                                            n = 1;
                                            if (n != 0) {
                                                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + obj);
                                            }
                                            obj2 = this.c.get(obj.getAction());
                                            if (obj2 == null) {
                                                break;
                                            }
                                            if (n != 0) {
                                                Log.v("LocalBroadcastManager", "Action list: " + obj2);
                                            }
                                            break Label_0313;
                                            // iftrue(Label_0490:, list != null)
                                            // iftrue(Label_0213:, n == 0)
                                            // iftrue(Label_0299:, n == 0)
                                            // iftrue(Label_0557:, index >= obj2.size())
                                            // iftrue(Label_0522:, n == 0)
                                            // iftrue(Label_0241:, !e.c)
                                            // iftrue(Label_0335:, match < 0)
                                            while (true) {
                                                while (true) {
                                                    Block_11_Outer:Block_14_Outer:
                                                    while (true) {
                                                    Block_16:
                                                        while (true) {
                                                            while (true) {
                                                                Block_17: {
                                                                    break Block_17;
                                                                    e = obj2.get(index);
                                                                    break Block_11_Outer;
                                                                    Log.v("LocalBroadcastManager", "  Filter's target already added");
                                                                    list2 = list;
                                                                    break Label_0506;
                                                                }
                                                                list2 = new ArrayList<ah>();
                                                                break Label_0313;
                                                                break Block_16;
                                                                continue Block_14_Outer;
                                                            }
                                                            continue Label_0506_Outer;
                                                        }
                                                        Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                                                        continue Block_11_Outer;
                                                    }
                                                    Log.v("LocalBroadcastManager", "Matching against filter " + e.a);
                                                    Label_0213: {
                                                        continue Label_0482_Outer;
                                                    }
                                                }
                                                Label_0241: {
                                                    match = e.a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                                                }
                                                continue Label_0156_Outer;
                                            }
                                            list2.add(e);
                                            e.c = true;
                                            break Label_0506;
                                        }
                                        Label_0335: {
                                            if (n != 0) {
                                                switch (match) {
                                                    default: {
                                                        str = "unknown reason";
                                                        break;
                                                    }
                                                    case -3: {
                                                        str = "action";
                                                        break;
                                                    }
                                                    case -4: {
                                                        str = "category";
                                                        break;
                                                    }
                                                    case -2: {
                                                        str = "data";
                                                        break;
                                                    }
                                                    case -1: {
                                                        str = "type";
                                                        break;
                                                    }
                                                }
                                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                                            }
                                        }
                                        break Label_0156_Outer;
                                        Label_0490:
                                        list2 = list;
                                        continue Label_0313;
                                    }
                                    index = 0;
                                    list = null;
                                    continue Label_0482_Outer;
                                    ++index;
                                    list = list2;
                                    continue Label_0482_Outer;
                                }
                            }
                            n = 0;
                            continue Label_0506_Outer;
                        }
                        list2 = list;
                        continue Label_0506;
                    }
                    // monitorexit(hashMap)
                    while (true) {
                    Label_0436:
                        while (true) {
                            return true;
                            while (i < list.size()) {
                                list.get(i).c = false;
                                ++i;
                            }
                            break Label_0436;
                            this.e.sendEmptyMessage(1);
                            continue Block_4_Outer;
                        }
                        this.d.add(new ag(obj, list));
                        continue;
                    }
                }
                // iftrue(Label_0482:, this.e.hasMessages(1))
                return false;
                Label_0557: {
                    if (list != null) {
                        i = 0;
                        continue;
                    }
                }
                break;
            }
            continue;
        }
    }
}
