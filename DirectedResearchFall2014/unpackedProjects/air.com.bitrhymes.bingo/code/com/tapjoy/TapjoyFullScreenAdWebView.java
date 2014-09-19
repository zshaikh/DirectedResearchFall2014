package com.tapjoy;

import android.os.*;

public class TapjoyFullScreenAdWebView extends TJAdUnitView
{
    private static final String TAG = "Full Screen Ad";
    
    @Override
    protected void onCreate(final Bundle bundle) {
        TapjoyLog.i("Full Screen Ad", "TapjoyFullScreenAdWebView onCreate");
        super.onCreate(bundle);
        TapjoyConnectCore.viewWillOpen(1);
        TapjoyConnectCore.viewDidOpen(1);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (this.isFinishing()) {
            TapjoyConnectCore.viewWillClose(1);
            TapjoyConnectCore.viewDidClose(1);
        }
    }
}
