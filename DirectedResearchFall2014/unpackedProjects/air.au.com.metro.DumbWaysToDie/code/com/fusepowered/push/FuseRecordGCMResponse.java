package com.fusepowered.push;

import android.app.*;
import android.os.*;
import android.util.*;
import com.fusepowered.fuseapi.*;

public class FuseRecordGCMResponse extends Activity
{
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        Log.d("FuseRecordGCMResponse", "Someone clicked on our Notification");
        FuseAPI.recordGCM();
        this.startActivity(FuseAPI.forGCMEvents);
    }
}
