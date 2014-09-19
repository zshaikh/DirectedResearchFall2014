package com.bitrhymes.nativeutils.utils;

import android.app.*;
import android.os.*;
import android.content.*;

public class OpenUDID_service extends Service
{
    public IBinder onBind(final Intent intent) {
        return (IBinder)new Binder() {
            public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
                final SharedPreferences sharedPreferences = OpenUDID_service.this.getSharedPreferences("bitrhymes_openudid_prefs", 0);
                parcel2.writeInt(parcel.readInt());
                parcel2.writeString(sharedPreferences.getString("openudid", (String)null));
                return true;
            }
        };
    }
}
