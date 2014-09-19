package android.support.v4.content;

import android.os.*;
import android.content.*;
import android.util.*;
import android.net.*;
import java.util.*;

public class LocalBroadcastManager
{
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock;
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions;
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList<BroadcastRecord> mPendingBroadcasts;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers;
    
    static {
        mLock = new Object();
    }
    
    private LocalBroadcastManager(final Context mAppContext) {
        super();
        this.mReceivers = new HashMap<BroadcastReceiver, ArrayList<IntentFilter>>();
        this.mActions = new HashMap<String, ArrayList<ReceiverRecord>>();
        this.mPendingBroadcasts = new ArrayList<BroadcastRecord>();
        this.mAppContext = mAppContext;
        this.mHandler = new Handler(mAppContext.getMainLooper()) {
            public void handleMessage(final Message message) {
                switch (message.what) {
                    default: {
                        super.handleMessage(message);
                    }
                    case 1: {
                        LocalBroadcastManager.this.executePendingBroadcasts();
                    }
                }
            }
        };
    }
    
    private void executePendingBroadcasts() {
    Label_0050_Outer:
        while (true) {
            while (true) {
                int n;
                synchronized (this.mReceivers) {
                    final int size = this.mPendingBroadcasts.size();
                    if (size <= 0) {
                        return;
                    }
                    final BroadcastRecord[] a = new BroadcastRecord[size];
                    this.mPendingBroadcasts.toArray(a);
                    this.mPendingBroadcasts.clear();
                    // monitorexit(this.mReceivers)
                    n = 0;
                    if (n >= a.length) {
                        continue Label_0050_Outer;
                    }
                    final BroadcastRecord broadcastRecord = a[n];
                    for (int i = 0; i < broadcastRecord.receivers.size(); ++i) {
                        ((ReceiverRecord)broadcastRecord.receivers.get(i)).receiver.onReceive(this.mAppContext, broadcastRecord.intent);
                    }
                }
                ++n;
                continue;
            }
        }
    }
    
    public static LocalBroadcastManager getInstance(final Context context) {
        synchronized (LocalBroadcastManager.mLock) {
            if (LocalBroadcastManager.mInstance == null) {
                LocalBroadcastManager.mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            return LocalBroadcastManager.mInstance;
        }
    }
    
    public void registerReceiver(final BroadcastReceiver broadcastReceiver, final IntentFilter e) {
        synchronized (this.mReceivers) {
            final ReceiverRecord e2 = new ReceiverRecord(e, broadcastReceiver);
            ArrayList<IntentFilter> value = this.mReceivers.get(broadcastReceiver);
            if (value == null) {
                value = new ArrayList<IntentFilter>(1);
                this.mReceivers.put(broadcastReceiver, value);
            }
            value.add(e);
            for (int i = 0; i < e.countActions(); ++i) {
                final String action = e.getAction(i);
                ArrayList<ReceiverRecord> value2 = this.mActions.get(action);
                if (value2 == null) {
                    value2 = new ArrayList<ReceiverRecord>(1);
                    this.mActions.put(action, value2);
                }
                value2.add(e2);
            }
        }
    }
    
    public boolean sendBroadcast(final Intent obj) {
        // monitorexit(hashMap)
        while (true) {
            while (true) {
            Label_0485_Outer:
                while (true) {
                Label_0162_Outer:
                    while (true) {
                    Block_13_Outer:
                        while (true) {
                            int index = 0;
                            Label_0502: {
                                Label_0493: {
                                    final int n;
                                    int match;
                                    synchronized (this.mReceivers) {
                                        final String action = obj.getAction();
                                        final String resolveTypeIfNeeded = obj.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
                                        final Uri data = obj.getData();
                                        final String scheme = obj.getScheme();
                                        final Set categories = obj.getCategories();
                                        if ((0x8 & obj.getFlags()) == 0x0) {
                                            break Block_13_Outer;
                                        }
                                        n = 1;
                                        if (n != 0) {
                                            Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + obj);
                                        }
                                        final ArrayList<ReceiverRecord> obj2 = this.mActions.get(obj.getAction());
                                        if (obj2 == null) {
                                            break;
                                        }
                                        if (n != 0) {
                                            Log.v("LocalBroadcastManager", "Action list: " + obj2);
                                        }
                                        break Label_0493;
                                        // iftrue(Label_0218:, n == 0)
                                        // iftrue(Label_0339:, match < 0)
                                        // iftrue(Label_0542:, index >= obj2.size())
                                        // iftrue(Label_0502:, n == 0)
                                        // iftrue(Label_0317:, list != null)
                                        // iftrue(Label_0303:, n == 0)
                                    Block_16_Outer:
                                        while (true) {
                                            Label_0218: {
                                                Block_14: {
                                                    ReceiverRecord e = null;
                                                    Block_12: {
                                                        while (true) {
                                                            Block_15: {
                                                                while (true) {
                                                                    e = obj2.get(index);
                                                                    break Block_12;
                                                                    Label_0242: {
                                                                        match = e.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                                                                    }
                                                                    break Block_15;
                                                                    continue Label_0162_Outer;
                                                                }
                                                                while (true) {
                                                                    while (true) {
                                                                        final ArrayList<ReceiverRecord> list = new ArrayList<ReceiverRecord>();
                                                                        Label_0317: {
                                                                            break Label_0317;
                                                                            break Block_14;
                                                                        }
                                                                        list.add(e);
                                                                        e.broadcasting = true;
                                                                        break Label_0502;
                                                                        continue Block_13_Outer;
                                                                    }
                                                                    Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                                                                    continue Block_16_Outer;
                                                                }
                                                            }
                                                            continue Label_0485_Outer;
                                                        }
                                                    }
                                                    Log.v("LocalBroadcastManager", "Matching against filter " + e.filter);
                                                    break Label_0218;
                                                }
                                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                                                break Label_0502;
                                            }
                                            continue Label_0485_Outer;
                                        }
                                    }
                                    // iftrue(Label_0242:, !e.broadcasting)
                                    Label_0339: {
                                        if (n != 0) {
                                            String str = null;
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
                                    break Label_0502;
                                }
                                index = 0;
                                final ArrayList<ReceiverRecord> list = null;
                                continue Label_0485_Outer;
                            }
                            ++index;
                            continue Label_0485_Outer;
                        }
                        int n = 0;
                        continue Label_0485_Outer;
                    }
                Label_0439_Outer:
                    while (true) {
                        return true;
                    Block_4:
                        while (true) {
                            final ArrayList<ReceiverRecord> list;
                            this.mPendingBroadcasts.add(new BroadcastRecord(obj, list));
                            break Block_4;
                            int i = 0;
                            while (i < list.size()) {
                                list.get(i).broadcasting = false;
                                ++i;
                            }
                            continue;
                        }
                        this.mHandler.sendEmptyMessage(1);
                        continue Label_0439_Outer;
                    }
                }
                // monitorexit(hashMap)
                // iftrue(Label_0485:, this.mHandler.hasMessages(1))
                return false;
                Label_0542: {
                    final ArrayList<ReceiverRecord> list;
                    if (list != null) {
                        final int i = 0;
                        continue;
                    }
                }
                break;
            }
            continue;
        }
    }
    
    public void sendBroadcastSync(final Intent intent) {
        if (this.sendBroadcast(intent)) {
            this.executePendingBroadcasts();
        }
    }
    
    public void unregisterReceiver(final BroadcastReceiver key) {
        ArrayList<IntentFilter> list;
        ArrayList<ReceiverRecord> list2;
        int n = 0;
        IntentFilter intentFilter;
        int n2 = 0;
        String action;
        int index;
        Label_0094_Outer:Label_0028_Outer:
        while (true) {
            Label_0028:Label_0053_Outer:
            while (true) {
                while (true) {
                Label_0176:
                    while (true) {
                        Label_0170: {
                            Label_0164: {
                                synchronized (this.mReceivers) {
                                    list = this.mReceivers.remove(key);
                                    if (list == null) {
                                        return;
                                    }
                                    break Label_0164;
                                    // iftrue(Label_0135:, n >= list2.size())
                                    // iftrue(Label_0176:, list2 == null)
                                    // iftrue(Label_0156:, index >= list.size())
                                    // iftrue(Label_0170:, (ReceiverRecord)list2.get(n).receiver != key)
                                    while (true) {
                                        Block_4: {
                                        Block_6_Outer:
                                            while (true) {
                                                list2.remove(n);
                                                --n;
                                                break Label_0170;
                                                Block_7: {
                                                    while (true) {
                                                        n = 0;
                                                        break Block_7;
                                                        action = intentFilter.getAction(n2);
                                                        list2 = this.mActions.get(action);
                                                        continue Label_0094_Outer;
                                                    }
                                                    break Block_4;
                                                }
                                                continue Block_6_Outer;
                                            }
                                            while (true) {
                                                this.mActions.remove(action);
                                                break Label_0176;
                                                Label_0135: {
                                                    continue Label_0053_Outer;
                                                }
                                            }
                                            Label_0156: {
                                                return;
                                            }
                                        }
                                        intentFilter = list.get(index);
                                        n2 = 0;
                                        continue Label_0028_Outer;
                                    }
                                }
                                // iftrue(Label_0176:, list2.size() > 0)
                                // iftrue(Label_0182:, n2 >= intentFilter.countActions())
                            }
                            index = 0;
                            continue Label_0028;
                        }
                        ++n;
                        continue Label_0028_Outer;
                    }
                    ++n2;
                    continue;
                }
                Label_0182: {
                    ++index;
                }
                continue Label_0028;
            }
        }
    }
    
    private static class BroadcastRecord
    {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;
        
        BroadcastRecord(final Intent intent, final ArrayList<ReceiverRecord> receivers) {
            super();
            this.intent = intent;
            this.receivers = receivers;
        }
    }
    
    private static class ReceiverRecord
    {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;
        
        ReceiverRecord(final IntentFilter filter, final BroadcastReceiver receiver) {
            super();
            this.filter = filter;
            this.receiver = receiver;
        }
        
        @Override
        public String toString() {
            final StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.receiver);
            sb.append(" filter=");
            sb.append(this.filter);
            sb.append("}");
            return sb.toString();
        }
    }
}
