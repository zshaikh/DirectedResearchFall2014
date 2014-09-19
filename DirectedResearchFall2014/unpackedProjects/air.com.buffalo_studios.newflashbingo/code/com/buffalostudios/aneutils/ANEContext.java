package com.buffalostudios.aneutils;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;
import com.buffalostudios.aneutils.bitmaputil.*;
import com.buffalostudios.aneutils.deviceinfo.*;
import com.buffalostudios.aneutils.globalerror.*;
import com.buffalostudios.aneutils.loadingspinner.*;
import com.buffalostudios.aneutils.notifier.*;

public class ANEContext extends FREContext
{
    private static final String TAG = "ANEContext";
    private static ANEContext instance;
    
    static {
        ANEContext.instance = null;
    }
    
    public ANEContext() {
        super();
        ANEContext.instance = this;
    }
    
    public static void dispatchFlashEvent(final String str, final String s) {
        Log.d("ANEContext", "Dispatch->" + str);
        ANEContext.instance.dispatchStatusEventAsync(str, s);
    }
    
    public static ANEContext getFREContext() {
        return ANEContext.instance;
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, ANEUtils.SetInForeground> hashMap = (HashMap<String, ANEUtils.SetInForeground>)new HashMap<String, PushNotifier.UnregisterGCM>();
        hashMap.put("aneUtilsGetError", (PushNotifier.UnregisterGCM)new ANEUtils.GetError());
        hashMap.put("aneUtilsSetInForeground", (PushNotifier.UnregisterGCM)new ANEUtils.SetInForeground());
        hashMap.put("bitmapUtilInit", (PushNotifier.UnregisterGCM)new BitmapUtil.Init());
        hashMap.put("bitmapUtilCompress", (PushNotifier.UnregisterGCM)new BitmapUtil.Compress());
        hashMap.put("bitmapUtilUncompress", (PushNotifier.UnregisterGCM)new BitmapUtil.Uncompress());
        hashMap.put("deviceInfoInit", (PushNotifier.UnregisterGCM)new DeviceInfo.Init());
        hashMap.put("deviceInfoGetBuildProperty", (PushNotifier.UnregisterGCM)new DeviceInfo.GetBuildProperty());
        hashMap.put("deviceInfoGetDisplayProperty", (PushNotifier.UnregisterGCM)new DeviceInfo.GetDisplayProperty());
        hashMap.put("deviceInfoGetFingerprintProperty", (PushNotifier.UnregisterGCM)new DeviceInfo.GetFingerprintProperty());
        hashMap.put("deviceInfoGetNetworkProperty", (PushNotifier.UnregisterGCM)new DeviceInfo.GetNetworkProperty());
        hashMap.put("deviceInfoGetTelephonyProperty", (PushNotifier.UnregisterGCM)new DeviceInfo.GetTelephonyProperty());
        hashMap.put("globalErrorInit", (PushNotifier.UnregisterGCM)new GlobalError.Init());
        hashMap.put("loadingSpinnerInit", (PushNotifier.UnregisterGCM)new LoadingSpinner.Init());
        hashMap.put("loadingSpinnerHide", (PushNotifier.UnregisterGCM)new LoadingSpinner.Hide());
        hashMap.put("loadingSpinnerShow", (PushNotifier.UnregisterGCM)new LoadingSpinner.Show());
        hashMap.put("localNotifierInit", (PushNotifier.UnregisterGCM)new LocalNotifier.Init());
        hashMap.put("localNotifierCancelNotification", (PushNotifier.UnregisterGCM)new LocalNotifier.CancelNotification());
        hashMap.put("localNotifierScheduleNotification", (PushNotifier.UnregisterGCM)new LocalNotifier.ScheduleNotification());
        hashMap.put("localNotifierScheduleNotificationRepeating", (PushNotifier.UnregisterGCM)new LocalNotifier.ScheduleNotificationRepeating());
        hashMap.put("pushNotifierInit", (PushNotifier.UnregisterGCM)new PushNotifier.Init());
        hashMap.put("pushNotifierInitGCM", (PushNotifier.UnregisterGCM)new PushNotifier.InitGCM());
        hashMap.put("pushNotifierIsGCMAvailable", (PushNotifier.UnregisterGCM)new PushNotifier.IsGCMAvailable());
        hashMap.put("pushNotifierIsGCMRegistered", (PushNotifier.UnregisterGCM)new PushNotifier.IsGCMRegistered());
        hashMap.put("pushNotifierIsGCMRegisteredOnServer", (PushNotifier.UnregisterGCM)new PushNotifier.IsGCMRegisteredOnServer());
        hashMap.put("pushNotifierSetGCMRegisteredOnServer", (PushNotifier.UnregisterGCM)new PushNotifier.SetGCMRegisteredOnServer());
        hashMap.put("pushNotifierUnregisterGCM", new PushNotifier.UnregisterGCM());
        return (Map<String, FREFunction>)hashMap;
    }
}
