package com.bitrhymes.facebookext;

import android.app.*;
import com.facebook.widget.*;
import android.os.*;
import java.net.*;
import java.io.*;
import android.util.*;
import com.adobe.fre.*;
import android.content.*;
import com.facebook.*;

public class DialogActivity extends Activity implements OnCompleteListener
{
    public static String extraPrefix;
    private String callback;
    private WebDialog dialog;
    private boolean isRequestDialog;
    private String method;
    
    static {
        DialogActivity.extraPrefix = "com.bitrhymes.facebookext.DialogActivity";
    }
    
    public DialogActivity() {
        super();
        this.dialog = null;
        this.isRequestDialog = false;
    }
    
    protected String bundleSetToURLEncoded(final Bundle bundle) {
        final StringBuilder sb = new StringBuilder();
        final String[] array = bundle.keySet().toArray(new String[0]);
        int i = 0;
        while (i < array.length) {
            if (i > 0) {
                sb.append("&");
            }
            while (true) {
                try {
                    sb.append(array[i]).append("=").append(URLEncoder.encode(bundle.get(array[i]).toString(), "utf-8"));
                    ++i;
                }
                catch (UnsupportedEncodingException ex) {
                    continue;
                }
                break;
            }
        }
        return sb.toString();
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        FacebookExt.log("INFO - DialogActivity.onActivityResult");
        this.finish();
    }
    
    public void onComplete(final Bundle bundle, final FacebookException ex) {
        final FREContext context = FacebookExt.context;
        FacebookExt.log("INFO - DialogActivity.onComplete");
        if (context != null && this.callback != null) {
            if (ex != null) {
                if (ex.getMessage() != null) {
                    FacebookExt.log("INFO - DialogActivity.onComplete, error getMessage " + ex.getMessage());
                    context.dispatchStatusEventAsync("FB_NETWORK_ERROR_EVENT", "fail," + ex.getMessage());
                }
                else {
                    FacebookExt.log("INFO - DialogActivity.onComplete, error null " + ex.getMessage());
                    context.dispatchStatusEventAsync("REQUEST_CANCELLED", "fail," + ex.getMessage());
                }
                this.finish();
                return;
            }
            if (bundle.getString("request") == null) {
                context.dispatchStatusEventAsync("REQUEST_CANCELLED", "fail,cancelled");
                this.finish();
                return;
            }
            String str = "";
            if (!this.isRequestDialog) {
                Log.i(this.getClass().getSimpleName(), "sending the session details back.");
                final Object[] array = bundle.keySet().toArray();
                for (int i = 0; i < bundle.size(); ++i) {
                    final String s = (String)array[i];
                    if (s.startsWith("request_id")) {
                        str = String.valueOf(new StringBuilder(String.valueOf(str)).append(bundle.getString(s)).toString()) + ",";
                    }
                    else if (s.startsWith("to")) {
                        str = String.valueOf(new StringBuilder(String.valueOf(str)).append(bundle.getString(s)).toString()) + ",";
                    }
                }
            }
            else {
                final Object[] array2 = bundle.keySet().toArray();
                for (int j = 0; j < bundle.size(); ++j) {
                    final String s2 = (String)array2[j];
                    if (s2.startsWith("request_id")) {
                        str = String.valueOf(new StringBuilder(String.valueOf(str)).append(bundle.getString(s2)).toString()) + ",";
                    }
                    else if (s2.startsWith("to")) {
                        str = String.valueOf(new StringBuilder(String.valueOf(str)).append(bundle.getString(s2)).toString()) + ",";
                    }
                }
            }
            context.dispatchStatusEventAsync("REQUEST_SENT", "success," + str);
        }
        this.finish();
    }
    
    protected void onCreate(final Bundle bundle) {
        FacebookExt.log("INFO - DialogActivity.onCreate");
        super.onCreate(bundle);
        final FREContext context = FacebookExt.context;
        this.requestWindowFeature(3);
        this.setContentView(context.getResourceId("layout.fb_main"));
        this.method = this.getIntent().getStringExtra(String.valueOf(DialogActivity.extraPrefix) + ".method");
        final Bundle bundleExtra = this.getIntent().getBundleExtra(String.valueOf(DialogActivity.extraPrefix) + ".parameters");
        this.callback = this.getIntent().getStringExtra(String.valueOf(DialogActivity.extraPrefix) + ".callback");
        if (this.method.equalsIgnoreCase("apprequests")) {
            this.isRequestDialog = true;
        }
        this.dialog = ((Builder)new WebDialog.Builder((Context)this, FacebookExtContext.session, this.method, bundleExtra).setOnCompleteListener(this)).build();
        this.dialog.getWindow().setFlags(1024, 1024);
        this.dialog.show();
    }
}
