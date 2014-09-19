package com.inmobi.activity;

import android.app.*;
import com.inmobi.androidsdk.ai.container.*;
import android.content.*;
import android.util.*;
import android.webkit.*;
import android.view.*;
import android.widget.*;
import java.lang.ref.*;
import android.os.*;

public class AdCreativeTesting extends Activity implements AdapterView$OnItemSelectedListener
{
    private EditText a;
    private int b;
    private int c;
    private Spinner d;
    private IMWebView e;
    private IMWebView f;
    private RelativeLayout g;
    private Button h;
    private Button i;
    private Button j;
    private boolean k;
    private float l;
    private String[] m;
    private a n;
    
    public AdCreativeTesting() {
        super();
        this.k = false;
        this.m = new String[] { "320*50", "320*48", "300*250", "728*90", "468*60", "120*600" };
        this.n = new a(this);
    }
    
    static /* synthetic */ void a(final AdCreativeTesting adCreativeTesting, final IMWebView e) {
        adCreativeTesting.e = e;
    }
    
    static /* synthetic */ void a(final AdCreativeTesting adCreativeTesting, final boolean k) {
        adCreativeTesting.k = k;
    }
    
    static /* synthetic */ void b(final AdCreativeTesting adCreativeTesting, final IMWebView f) {
        adCreativeTesting.f = f;
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903041);
        this.a = (EditText)this.findViewById(2131099657);
        (this.d = (Spinner)this.findViewById(2131099659)).setOnItemSelectedListener((AdapterView$OnItemSelectedListener)this);
        this.d.setAdapter((SpinnerAdapter)new ArrayAdapter((Context)this, 17367048, (Object[])this.m));
        this.g = (RelativeLayout)this.findViewById(2131099656);
        this.e = new IMWebView((Context)this, null, false, false);
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager)this.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.l = displayMetrics.density;
        (this.h = (Button)this.findViewById(2131099660)).setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                final String string = AdCreativeTesting.this.a.getText().toString();
                if (!URLUtil.isValidUrl(string)) {
                    Toast.makeText((Context)AdCreativeTesting.this, (CharSequence)"Please enter a valid url", 0).show();
                    return;
                }
                AdCreativeTesting.this.i.setEnabled(true);
                try {
                    final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int)(AdCreativeTesting.this.b * AdCreativeTesting.this.l), (int)(AdCreativeTesting.this.c * AdCreativeTesting.this.l));
                    AdCreativeTesting.this.e.reinitializeExpandProperties();
                    AdCreativeTesting.this.e.loadUrl(string);
                    AdCreativeTesting.this.e.setVisibility(0);
                    AdCreativeTesting.this.g.addView((View)AdCreativeTesting.this.e, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
                    AdCreativeTesting.a(AdCreativeTesting.this, true);
                    AdCreativeTesting.this.a.setEnabled(false);
                    AdCreativeTesting.this.h.setEnabled(false);
                    AdCreativeTesting.this.j.setEnabled(false);
                }
                catch (Exception ex) {}
            }
        });
        (this.i = (Button)this.findViewById(2131099655)).setEnabled(false);
        this.i.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                AdCreativeTesting.this.h.setEnabled(true);
                AdCreativeTesting.this.a.setEnabled(true);
                AdCreativeTesting.this.j.setEnabled(true);
                if (AdCreativeTesting.this.e.getStateVariable() == IMWebView.ViewState.EXPANDED) {
                    AdCreativeTesting.this.e.close();
                }
                if (AdCreativeTesting.this.k) {
                    AdCreativeTesting.this.g.removeView((View)AdCreativeTesting.this.e);
                    AdCreativeTesting.a(AdCreativeTesting.this, false);
                }
                AdCreativeTesting.a(AdCreativeTesting.this, new IMWebView((Context)AdCreativeTesting.this, null, false, false));
                AdCreativeTesting.this.i.setEnabled(false);
            }
        });
        (this.j = (Button)this.findViewById(2131099661)).setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                final String string = AdCreativeTesting.this.a.getText().toString();
                if (!URLUtil.isValidUrl(string)) {
                    Toast.makeText((Context)AdCreativeTesting.this, (CharSequence)"Please enter a valid url", 0).show();
                    return;
                }
                AdCreativeTesting.b(AdCreativeTesting.this, new IMWebView((Context)AdCreativeTesting.this, null, true, false));
                AdCreativeTesting.this.f.pageFinishedCallbackForAdCreativeTesting(AdCreativeTesting.this.n.obtainMessage(998));
                AdCreativeTesting.this.f.loadUrl(string);
                AdCreativeTesting.this.i.setEnabled(true);
                AdCreativeTesting.this.a.setEnabled(false);
                AdCreativeTesting.this.h.setEnabled(false);
                AdCreativeTesting.this.j.setEnabled(false);
            }
        });
    }
    
    public void onItemSelected(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        this.b = Integer.parseInt(this.m[n].substring(0, 3));
        this.c = Integer.parseInt(this.m[n].substring(4));
    }
    
    public void onNothingSelected(final AdapterView<?> adapterView) {
        this.b = 320;
        this.c = 50;
    }
    
    static class a extends Handler
    {
        private WeakReference<AdCreativeTesting> a;
        
        public a(final AdCreativeTesting referent) {
            super();
            this.a = new WeakReference<AdCreativeTesting>(referent);
        }
        
        public void handleMessage(final Message message) {
            final AdCreativeTesting adCreativeTesting = this.a.get();
            if (adCreativeTesting != null) {
                switch (message.what) {
                    case 998: {
                        adCreativeTesting.f.changeContentAreaForInterstitials(false);
                        break;
                    }
                }
            }
            super.handleMessage(message);
        }
    }
}
