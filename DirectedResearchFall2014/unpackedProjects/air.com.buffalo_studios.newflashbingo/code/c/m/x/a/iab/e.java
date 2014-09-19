package c.m.x.a.iab;

import android.content.*;
import com.android.vending.billing.*;
import android.os.*;

final class e implements ServiceConnection
{
    final /* synthetic */ n a;
    final /* synthetic */ d b;
    
    e(final d b, final n a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    public final void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.b.c("Billing service connected.");
        this.b.h = IInAppBillingService$Stub.a(binder);
        final String packageName = this.b.g.getPackageName();
        try {
            this.b.c("Checking for in-app billing 3 support.");
            final int a = this.b.h.a(3, packageName, "inapp");
            if (a != 0) {
                if (this.a != null) {
                    this.a.a(new p(a, "Error checking for billing v3 support."));
                }
                this.b.d = false;
                return;
            }
            this.b.c("In-app billing version 3 supported for " + packageName);
            final int a2 = this.b.h.a(3, packageName, "subs");
            if (a2 == 0) {
                this.b.c("Subscriptions AVAILABLE.");
                this.b.d = true;
            }
            else {
                this.b.c("Subscriptions NOT AVAILABLE. Response: " + a2);
            }
            this.b.c = true;
            if (this.a != null) {
                this.a.a(new p(0, "Setup successful."));
            }
        }
        catch (RemoteException ex) {
            if (this.a != null) {
                this.a.a(new p(-1001, "RemoteException while setting up in-app billing."));
            }
            ex.printStackTrace();
        }
    }
    
    public final void onServiceDisconnected(final ComponentName componentName) {
        this.b.c("Billing service disconnected.");
        this.b.h = null;
    }
}
