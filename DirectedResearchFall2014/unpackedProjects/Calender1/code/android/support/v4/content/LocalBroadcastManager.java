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
                String action;
                String resolveTypeIfNeeded;
                Uri data;
                String scheme;
                Set categories;
                int n;
                ArrayList<ReceiverRecord> obj2;
                ReceiverRecord e;
                int index = 0;
                ArrayList<ReceiverRecord> list;
                int match;
                String str;
                int i;
                Block_4_Outer:Label_0439_Outer:
                while (true) {
                    Label_0218_Outer:Block_12_Outer:Block_11_Outer:Block_17_Outer:Block_15_Outer:Label_0162_Outer:
                    while (true) {
                        Label_0500: {
                            while (true) {
                                Label_0494: {
                                    Label_0485: {
                                        synchronized (this.mReceivers) {
                                            action = obj.getAction();
                                            resolveTypeIfNeeded = obj.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
                                            data = obj.getData();
                                            scheme = obj.getScheme();
                                            categories = obj.getCategories();
                                            if ((0x8 & obj.getFlags()) == 0x0) {
                                                break Label_0500;
                                            }
                                            n = 1;
                                            if (n != 0) {
                                                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + obj);
                                            }
                                            obj2 = this.mActions.get(obj.getAction());
                                            if (obj2 == null) {
                                                break;
                                            }
                                            if (n != 0) {
                                                Log.v("LocalBroadcastManager", "Action list: " + obj2);
                                            }
                                            break Label_0485;
                                            // iftrue(Label_0494:, n == 0)
                                            // iftrue(Label_0242:, !e.broadcasting)
                                            // iftrue(Label_0218:, n == 0)
                                            // iftrue(Label_0303:, n == 0)
                                            // iftrue(Label_0534:, index >= obj2.size())
                                            // iftrue(Label_0317:, list != null)
                                            // iftrue(Label_0339:, match < 0)
                                            Block_14: {
                                                while (true) {
                                                Label_0317:
                                                    while (true) {
                                                    Label_0303:
                                                        while (true) {
                                                            while (true) {
                                                                while (true) {
                                                                    while (true) {
                                                                        break Block_14;
                                                                        continue Label_0218_Outer;
                                                                    }
                                                                    Log.v("LocalBroadcastManager", "Matching against filter " + e.filter);
                                                                    continue Block_12_Outer;
                                                                }
                                                                e = obj2.get(index);
                                                                continue Block_11_Outer;
                                                            }
                                                            list = new ArrayList<ReceiverRecord>();
                                                            break Label_0317;
                                                            Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                                                            break Label_0303;
                                                            continue Block_17_Outer;
                                                        }
                                                        continue Block_15_Outer;
                                                    }
                                                    list.add(e);
                                                    e.broadcasting = true;
                                                    break Label_0494;
                                                    Label_0242: {
                                                        match = e.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                                                    }
                                                    continue Label_0162_Outer;
                                                }
                                            }
                                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                                            break Label_0494;
                                        }
                                        Label_0339: {
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
                                        break Label_0494;
                                    }
                                    index = 0;
                                    list = null;
                                    continue Block_4_Outer;
                                }
                                ++index;
                                continue Block_4_Outer;
                            }
                        }
                        n = 0;
                        continue Block_4_Outer;
                    }
                    // iftrue(Label_0477:, this.mHandler.hasMessages(1))
                    Label_0477: {
                        while (true) {
                            while (true) {
                                this.mHandler.sendEmptyMessage(1);
                                break Label_0477;
                                this.mPendingBroadcasts.add(new BroadcastRecord(obj, list));
                                continue Label_0439_Outer;
                            }
                            while (i < list.size()) {
                                list.get(i).broadcasting = false;
                                ++i;
                            }
                            continue;
                        }
                    }
                    // monitorexit(hashMap)
                    return true;
                }
                return false;
                Label_0534: {
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
    
    public void sendBroadcastSync(final Intent intent) {
        if (this.sendBroadcast(intent)) {
            this.executePendingBroadcasts();
        }
    }
    
    public void unregisterReceiver(final BroadcastReceiver key) {
    Label_0028_Outer:
        while (true) {
        Label_0028:
            while (true) {
                ArrayList<IntentFilter> list;
                int n = 0;
                IntentFilter intentFilter;
                int n2 = 0;
                ArrayList<ReceiverRecord> list2;
                int index = 0;
                String action;
                Block_6_Outer:Label_0094_Outer:
                while (true) {
                Label_0094:
                    while (true) {
                        Label_0170: {
                            Label_0164: {
                                synchronized (this.mReceivers) {
                                    list = this.mReceivers.remove(key);
                                    if (list == null) {
                                        return;
                                    }
                                    break Label_0164;
                                    // iftrue(Label_0182:, n >= intentFilter.countActions())
                                    // iftrue(Label_0170:, (ReceiverRecord)list2.get(n2).receiver != key)
                                    // iftrue(Label_0156:, index >= list.size())
                                    // iftrue(Label_0135:, n2 >= list2.size())
                                    // iftrue(Label_0176:, list2.size() > 0)
                                    while (true) {
                                        Block_5: {
                                            break Block_5;
                                            n2 = 0;
                                            break Label_0094;
                                            while (true) {
                                                Block_8: {
                                                    Block_4: {
                                                        while (true) {
                                                            break Block_8;
                                                            Label_0156: {
                                                                return;
                                                            }
                                                            break Block_4;
                                                            continue Label_0028_Outer;
                                                        }
                                                        this.mActions.remove(action);
                                                        break Label_0094;
                                                    }
                                                    intentFilter = list.get(index);
                                                    n = 0;
                                                    continue Block_6_Outer;
                                                }
                                                list2.remove(n2);
                                                --n2;
                                                break Label_0170;
                                                Label_0135: {
                                                    continue;
                                                }
                                            }
                                        }
                                        action = intentFilter.getAction(n);
                                        list2 = this.mActions.get(action);
                                        continue Label_0094_Outer;
                                    }
                                }
                                // iftrue(Label_0176:, list2 == null)
                            }
                            index = 0;
                            continue Label_0028;
                        }
                        ++n2;
                        continue Label_0094;
                    }
                    ++n;
                    continue Label_0094_Outer;
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
