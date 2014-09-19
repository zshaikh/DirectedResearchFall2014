package com.tapjoy;

import android.content.res.*;
import android.os.*;

public class TapjoyDailyRewardAdWebView extends TJAdUnitView
{
    @Override
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.webView != null) {
            new RefreshTask().execute((Object[])new Void[0]);
        }
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        TapjoyConnectCore.viewWillOpen(2);
        TapjoyConnectCore.viewDidOpen(2);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (this.isFinishing()) {
            TapjoyConnectCore.viewWillClose(2);
            TapjoyConnectCore.viewDidClose(2);
        }
    }
    
    private class RefreshTask extends AsyncTask<Void, Void, Boolean>
    {
        protected Boolean doInBackground(final Void... array) {
            try {
                Thread.sleep(200L);
                return true;
            }
            catch (InterruptedException ex) {
                ex.printStackTrace();
                return true;
            }
        }
        
        protected void onPostExecute(final Boolean b) {
            if (TapjoyDailyRewardAdWebView.this.webView != null) {
                TapjoyDailyRewardAdWebView.this.webView.loadUrl("javascript:window.onorientationchange();");
            }
        }
    }
}
