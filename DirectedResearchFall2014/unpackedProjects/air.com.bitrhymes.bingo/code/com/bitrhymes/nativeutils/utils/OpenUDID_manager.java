package com.bitrhymes.nativeutils.utils;

import android.util.*;
import java.security.*;
import java.math.*;
import android.annotation.*;
import java.util.*;
import android.content.pm.*;
import android.content.*;
import android.os.*;

public class OpenUDID_manager implements ServiceConnection
{
    private static final boolean LOG = true;
    private static String OpenUDID;
    public static final String PREFS_NAME = "bitrhymes_openudid_prefs";
    public static final String PREF_KEY = "openudid";
    public static final String TAG = "OpenUDID";
    private static boolean mInitialized;
    private final Context mContext;
    private List<ResolveInfo> mMatchingIntents;
    public final SharedPreferences mPreferences;
    private final Random mRandom;
    private Map<String, Integer> mReceivedOpenUDIDs;
    
    static {
        OpenUDID_manager.OpenUDID = null;
        OpenUDID_manager.mInitialized = false;
    }
    
    public OpenUDID_manager(final Context mContext) {
        super();
        this.mPreferences = mContext.getSharedPreferences("bitrhymes_openudid_prefs", 0);
        this.mContext = mContext;
        this.mRandom = new Random();
        this.mReceivedOpenUDIDs = new HashMap<String, Integer>();
    }
    
    @TargetApi(3)
    private void generateOpenUDID() {
        Log.d("OpenUDID", "Generating openUDID");
        if (OpenUDID_manager.OpenUDID != null && OpenUDID_manager.OpenUDID.length() == 40) {
            return;
        }
        OpenUDID_manager.OpenUDID = new BigInteger(64, new SecureRandom()).toString(16);
        try {
            final long n = System.nanoTime() / 1000L;
            Log.d("OpenUDID", "microseconds:" + n);
            OpenUDID_manager.OpenUDID = Utils.SHA1(String.valueOf(OpenUDID_manager.OpenUDID) + n);
        }
        catch (Exception ex) {
            Log.d("OpenUDID", "Error in creating sha1:" + ex.getMessage());
        }
    }
    
    private void getMostFrequentOpenUDID() {
        if (!this.mReceivedOpenUDIDs.isEmpty()) {
            final TreeMap<String, Object> treeMap = new TreeMap<String, Object>(new ValueComparator((ValueComparator)null));
            treeMap.putAll(this.mReceivedOpenUDIDs);
            OpenUDID_manager.OpenUDID = treeMap.firstKey();
        }
    }
    
    public static String getOpenUDID() {
        if (!OpenUDID_manager.mInitialized) {
            Log.e("OpenUDID", "Initialisation isn't done");
        }
        return OpenUDID_manager.OpenUDID;
    }
    
    public static boolean isInitialized() {
        return OpenUDID_manager.mInitialized;
    }
    
    private void startService() {
        if (this.mMatchingIntents.size() > 0) {
            Log.d("OpenUDID", "Trying service " + (Object)this.mMatchingIntents.get(0).loadLabel(this.mContext.getPackageManager()));
            final ServiceInfo serviceInfo = this.mMatchingIntents.get(0).serviceInfo;
            final Intent intent = new Intent();
            intent.setComponent(new ComponentName(serviceInfo.applicationInfo.packageName, serviceInfo.name));
            this.mContext.bindService(intent, (ServiceConnection)this, 1);
            this.mMatchingIntents.remove(0);
            return;
        }
        this.getMostFrequentOpenUDID();
        if (OpenUDID_manager.OpenUDID == null) {
            this.generateOpenUDID();
        }
        Log.d("OpenUDID", "OpenUDID: " + OpenUDID_manager.OpenUDID);
        this.storeOpenUDID();
        OpenUDID_manager.mInitialized = true;
    }
    
    private void storeOpenUDID() {
        final SharedPreferences$Editor edit = this.mPreferences.edit();
        edit.putString("openudid", OpenUDID_manager.OpenUDID);
        edit.commit();
    }
    
    public static void sync(final Context context) {
        final OpenUDID_manager openUDID_manager = new OpenUDID_manager(context);
        OpenUDID_manager.OpenUDID = openUDID_manager.mPreferences.getString("openudid", (String)null);
        if (OpenUDID_manager.OpenUDID == null || OpenUDID_manager.OpenUDID.length() != 40) {
            openUDID_manager.generateOpenUDID();
            Log.d("OpenUDID", "OpenUDID: " + OpenUDID_manager.OpenUDID);
            openUDID_manager.storeOpenUDID();
            OpenUDID_manager.mInitialized = true;
            return;
        }
        Log.d("OpenUDID", "OpenUDID: " + OpenUDID_manager.OpenUDID);
        OpenUDID_manager.mInitialized = true;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        while (true) {
            try {
                final Parcel obtain = Parcel.obtain();
                obtain.writeInt(this.mRandom.nextInt());
                final Parcel obtain2 = Parcel.obtain();
                binder.transact(1, Parcel.obtain(), obtain2, 0);
                if (obtain.readInt() == obtain2.readInt()) {
                    final String string = obtain2.readString();
                    if (string != null) {
                        Log.d("OpenUDID", "Received " + string);
                        if (this.mReceivedOpenUDIDs.containsKey(string)) {
                            this.mReceivedOpenUDIDs.put(string, 1 + this.mReceivedOpenUDIDs.get(string));
                        }
                        else {
                            this.mReceivedOpenUDIDs.put(string, 1);
                        }
                    }
                }
                obtain.recycle();
                this.mContext.unbindService((ServiceConnection)this);
            }
            catch (RemoteException ex) {
                Log.e("OpenUDID", "RemoteException: " + ex.getMessage());
                continue;
            }
            break;
        }
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
    }
    
    private class ValueComparator implements Comparator<Object>
    {
        @Override
        public int compare(final Object o, final Object o2) {
            if (OpenUDID_manager.this.mReceivedOpenUDIDs.get(o) < OpenUDID_manager.this.mReceivedOpenUDIDs.get(o2)) {
                return 1;
            }
            if (OpenUDID_manager.this.mReceivedOpenUDIDs.get(o) == OpenUDID_manager.this.mReceivedOpenUDIDs.get(o2)) {
                return 0;
            }
            return -1;
        }
    }
}
