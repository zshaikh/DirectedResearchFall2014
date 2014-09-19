package com.buffalostudios.aneutils.globalerror;

import android.os.*;
import android.view.*;
import android.app.*;
import android.content.*;

public class GlobalErrorActivity extends Activity
{
    public static void start(final Activity activity, final String s) {
        final Intent intent = new Intent((Context)activity, (Class)GlobalErrorActivity.class);
        intent.putExtra("com.buffalostudios.aneutils.CRASH_REPORT", s);
        intent.addFlags(524288);
        intent.addFlags(67108864);
        activity.startActivity(intent);
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(new View((Context)this));
        String string = "";
        final Bundle extras = this.getIntent().getExtras();
        if (extras != null) {
            string = extras.getString("com.buffalostudios.aneutils.CRASH_REPORT");
            if (string == null) {
                string = "";
            }
        }
        new AlertDialog$Builder(this.getApplicationContext()).setTitle((CharSequence)"There is something wrong").setMessage((CharSequence)("Crash report: " + string)).setPositiveButton((CharSequence)"OK", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
            }
        }).show();
    }
    
    private static class Key
    {
        private static final String CRASH_REPORT = "com.buffalostudios.aneutils.CRASH_REPORT";
    }
}
