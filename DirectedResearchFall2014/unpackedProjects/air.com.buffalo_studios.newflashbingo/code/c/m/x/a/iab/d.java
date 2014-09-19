package c.m.x.a.iab;

import android.annotation.*;
import com.android.vending.billing.*;
import android.text.*;
import java.util.*;
import android.util.*;
import org.json.*;
import android.app.*;
import android.content.*;
import android.os.*;

@TargetApi(5)
public final class d
{
    boolean a;
    String b;
    boolean c;
    boolean d;
    boolean e;
    String f;
    Context g;
    IInAppBillingService h;
    ServiceConnection i;
    int j;
    String k;
    String l;
    m m;
    
    public d(final Context context, final String l) {
        super();
        this.a = false;
        this.b = "IabHelper";
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = "";
        this.l = null;
        this.g = context.getApplicationContext();
        this.l = l;
        this.c("IAB helper created.");
    }
    
    private int a(final Bundle bundle) {
        final Object value = bundle.get("RESPONSE_CODE");
        if (value == null) {
            this.c("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (value instanceof Integer) {
            return (int)value;
        }
        if (value instanceof Long) {
            return (int)(long)value;
        }
        this.d("Unexpected type for bundle response code.");
        this.d(((Long)value).getClass().getName());
        throw new RuntimeException("Unexpected type for bundle response code: " + ((Long)value).getClass().getName());
    }
    
    private int a(final q q, final String str) {
        this.c("Querying owned items, item type: " + str);
        this.c("Package name: " + this.g.getPackageName());
        int n = 0;
        String string = null;
        while (true) {
            this.c("Calling getPurchases with continuation token: " + string);
            final Bundle a = this.h.a(3, this.g.getPackageName(), str, string);
            final int a2 = this.a(a);
            this.c("Owned items response: " + String.valueOf(a2));
            if (a2 != 0) {
                this.c("getPurchases() failed: " + a(a2));
                return a2;
            }
            if (!a.containsKey("INAPP_PURCHASE_ITEM_LIST") || !a.containsKey("INAPP_PURCHASE_DATA_LIST") || !a.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                this.d("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            }
            final ArrayList stringArrayList = a.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            final ArrayList stringArrayList2 = a.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            final ArrayList stringArrayList3 = a.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            int i = 0;
            int n2 = n;
            while (i < stringArrayList2.size()) {
                final String s = stringArrayList2.get(i);
                final String str2 = stringArrayList3.get(i);
                final String str3 = stringArrayList.get(i);
                int n3;
                if (c.m.x.a.iab.s.a(this.l, s, str2)) {
                    this.c("Sku is owned: " + str3);
                    final r r = new r(str, s, str2);
                    if (TextUtils.isEmpty((CharSequence)r.h)) {
                        this.f("BUG: empty/null token!");
                        this.c("Purchase data: " + s);
                    }
                    q.b.put(r.d, r);
                    n3 = n2;
                }
                else {
                    this.f("Purchase signature verification **FAILED**. Not adding item.");
                    this.c("   Purchase data: " + s);
                    this.c("   Signature: " + str2);
                    n3 = 1;
                }
                ++i;
                n2 = n3;
            }
            string = a.getString("INAPP_CONTINUATION_TOKEN");
            this.c("Continuation token: " + string);
            if (TextUtils.isEmpty((CharSequence)string)) {
                if (n2 != 0) {
                    return -1003;
                }
                return 0;
            }
            else {
                n = n2;
            }
        }
    }
    
    private int a(final String s, final q q, final List list) {
        this.c("Querying SKU details.");
        final ArrayList<String> list2 = new ArrayList<String>();
        list2.addAll(q.a(s));
        if (list != null) {
            for (final String s2 : list) {
                if (!list2.contains(s2)) {
                    list2.add(s2);
                }
            }
        }
        if (list2.size() == 0) {
            this.c("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        final ArrayList<ArrayList<String>> list3 = new ArrayList<ArrayList<String>>();
        final ArrayList<String> list4 = new ArrayList<String>();
        int n = 0;
        ArrayList<String> e = list4;
        for (int i = 0; i < list2.size(); ++i) {
            if (n == 0) {
                this.c("new templist");
                e = new ArrayList<String>();
            }
            e.add(list2.get(i));
            if (++n == 19 || i == list2.size() - 1) {
                this.c("add pack index 0 of i " + i);
                list3.add(e);
                n = 0;
            }
        }
        for (final ArrayList<String> list5 : list3) {
            final Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", (ArrayList)list5);
            final Bundle a = this.h.a(3, this.g.getPackageName(), s, bundle);
            if (!a.containsKey("DETAILS_LIST")) {
                final int a2 = this.a(a);
                if (a2 != 0) {
                    this.c("getSkuDetails() failed: " + a(a2));
                    return a2;
                }
                this.d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                return -1002;
            }
            else {
                final Iterator iterator3 = a.getStringArrayList("DETAILS_LIST").iterator();
                while (iterator3.hasNext()) {
                    final t obj = new t(s, iterator3.next());
                    this.c("Got sku details: " + obj);
                    q.a.put(obj.b, obj);
                }
            }
        }
        return 0;
    }
    
    public static String a(final int n) {
        final String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        final String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (n <= -1000) {
            final int n2 = -1000 - n;
            if (n2 >= 0 && n2 < split2.length) {
                return split2[n2];
            }
            return String.valueOf(n) + ":Unknown IAB Helper Error";
        }
        else {
            if (n < 0 || n >= split.length) {
                return String.valueOf(n) + ":Unknown";
            }
            return split[n];
        }
    }
    
    private void e(final String str) {
        if (this.e) {
            throw new IllegalStateException("Can't start async operation (" + str + ") because another async operation(" + this.f + ") is in progress.");
        }
        this.f = str;
        this.e = true;
        this.c("Starting async operation: " + str);
    }
    
    private void f(final String str) {
        Log.w(this.b, "In-app billing warning: " + str);
    }
    
    public final q a(final boolean b, final List list) {
        this.b("queryInventory");
        q q;
        try {
            q = new q();
            final int a = this.a(q, "inapp");
            if (a != 0) {
                throw new c(a, "Error refreshing inventory (querying owned items).");
            }
            goto Label_0061;
        }
        catch (RemoteException ex) {
            throw new c(-1001, "Remote exception while refreshing inventory.", (Exception)ex);
        }
        catch (JSONException ex2) {
            throw new c(-1002, "Error parsing JSON response while refreshing inventory.", (Exception)ex2);
        }
        if (this.d) {
            final int a2 = this.a(q, "subs");
            if (a2 != 0) {
                throw new c(a2, "Error refreshing inventory (querying owned subscriptions).");
            }
            if (b) {
                final int a3 = this.a("subs", q, list);
                if (a3 != 0) {
                    throw new c(a3, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
        }
        return q;
    }
    
    public final void a() {
        this.c("Disposing.");
        this.c = false;
        if (this.i != null) {
            this.c("Unbinding from service.");
            if (this.g != null) {
                this.g.unbindService(this.i);
            }
            this.i = null;
            this.h = null;
            this.m = null;
        }
    }
    
    public final void a(final Activity activity, final String str, final String str2, final int n, final m m, final String s) {
        this.b("launchPurchaseFlow");
        this.e("launchPurchaseFlow");
        if (str2.equals("subs") && !this.d) {
            final p p6 = new p(-1009, "Subscriptions are not available.");
            if (m != null) {
                m.a(p6, null);
            }
            this.c();
        }
        else {
            try {
                this.c("Constructing buy intent for " + str + ", item type: " + str2);
                final int a = this.a(this.h.a(3, this.g.getPackageName(), str, str2, s));
                if (a != 0) {
                    this.d("Unable to buy item, Error response: " + a(a));
                    final p p7 = new p(a, "Unable to buy item");
                    if (m != null) {
                        m.a(p7, null);
                    }
                    this.c();
                    return;
                }
                goto Label_0251;
            }
            catch (IntentSender$SendIntentException ex) {
                this.d("SendIntentException while launching purchase flow for sku " + str);
                ex.printStackTrace();
                final p p8 = new p(-1004, "Failed to send intent.");
                if (m != null) {
                    m.a(p8, null);
                }
            }
            catch (RemoteException ex2) {
                this.d("RemoteException while launching purchase flow for sku " + str);
                ex2.printStackTrace();
                final p p9 = new p(-1001, "Remote exception while starting purchase flow");
                if (m != null) {
                    m.a(p9, null);
                }
            }
        }
    }
    
    public final void a(final n n) {
        if (this.c) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        this.c("Starting in-app billing setup.");
        this.i = (ServiceConnection)new e(this, n);
        final Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        if (!this.g.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
            this.g.bindService(intent, this.i, 1);
        }
        else if (n != null) {
            n.a(new p(3, "Billing service unavailable on device."));
        }
    }
    
    public final void a(final r r, final k k) {
        this.b("consume");
        final ArrayList<r> list = new ArrayList<r>();
        list.add(r);
        final Handler handler = new Handler();
        this.e("consume");
        new Thread(new h(this, list, k, handler)).start();
    }
    
    public final void a(final String b) {
        this.a = false;
        this.b = b;
    }
    
    public final void a(final boolean b, final List list, final o o) {
        final Handler handler = new Handler();
        this.b("queryInventory");
        this.e("refresh inventory");
        new Thread(new f(this, b, list, handler, o)).start();
    }
    
    public final boolean a(final int n, final int i, final Intent intent) {
        this.c("activityResultIABInternalHandle");
        if (n != this.j) {
            return false;
        }
        this.b("handleActivityResult");
        this.c();
        if (intent == null) {
            this.d("Null data in IAB activity result.");
            final p p3 = new p(-1002, "Null data in IAB result");
            if (this.m != null) {
                this.m.a(p3, null);
            }
            return true;
        }
        final Object value = intent.getExtras().get("RESPONSE_CODE");
        int intValue;
        if (value == null) {
            this.d("Intent with no response code, assuming OK (known issue)");
            intValue = 0;
        }
        else if (value instanceof Integer) {
            intValue = (int)value;
        }
        else {
            if (!(value instanceof Long)) {
                this.d("Unexpected type for intent response code.");
                this.d(((Long)value).getClass().getName());
                throw new RuntimeException("Unexpected type for intent response code: " + ((Long)value).getClass().getName());
            }
            intValue = (int)(long)value;
        }
        final String stringExtra = intent.getStringExtra("INAPP_PURCHASE_DATA");
        final String stringExtra2 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        Label_0602: {
            if (i != -1 || intValue != 0) {
                break Label_0602;
            }
            this.c("Successful resultcode from purchase activity.");
            this.c("Purchase data: " + stringExtra);
            this.c("Data signature: " + stringExtra2);
            this.c("Extras: " + intent.getExtras());
            this.c("Expected item type: " + this.k);
            if (stringExtra == null || stringExtra2 == null) {
                this.d("BUG: either purchaseData or dataSignature is null.");
                this.c("Extras: " + intent.getExtras().toString());
                final p p4 = new p(-1008, "IAB returned null purchaseData or dataSignature");
                if (this.m != null) {
                    this.m.a(p4, null);
                }
                return true;
            }
            try {
                final r r = new r(this.k, stringExtra, stringExtra2);
                final String d = r.d;
                if (s.a(this.l, stringExtra, stringExtra2)) {
                    this.c("Purchase signature successfully verified.");
                    if (this.m != null) {
                        this.m.a(new p(0, "Success"), r);
                    }
                    return true;
                }
                this.d("Purchase signature verification FAILED for sku " + d);
                final p p5 = new p(-1003, "Signature verification failed for sku " + d);
                if (this.m != null) {
                    this.m.a(p5, r);
                    return true;
                }
                return true;
            }
            catch (JSONException ex) {
                this.d("Failed to parse purchase data.");
                ex.printStackTrace();
                final p p6 = new p(-1002, "Failed to parse purchase data.");
                if (this.m != null) {
                    this.m.a(p6, null);
                }
                return true;
            }
        }
        if (i == -1) {
            this.c("Result code was OK but in-app billing response was not OK: " + a(intValue));
            if (this.m != null) {
                this.m.a(new p(intValue, "Problem purchashing item."), null);
                return true;
            }
            return true;
        }
        else if (i == 0) {
            this.c("Purchase canceled - Response: " + a(intValue));
            final String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
            String s;
            int n2;
            if (intValue <= split.length && intValue >= 0) {
                if (intValue == 1) {
                    s = "User canceled.";
                    n2 = -1005;
                }
                else {
                    final String s2 = split[intValue];
                    n2 = intValue;
                    s = s2;
                }
            }
            else {
                s = "User canceled.";
                n2 = -1005;
            }
            final p p7 = new p(n2, s);
            if (this.m != null) {
                this.m.a(p7, null);
                return true;
            }
            return true;
        }
        else {
            this.d("Purchase failed. Result code: " + Integer.toString(i) + ". Response: " + a(intValue));
            final p p8 = new p(-1006, "Unknown purchase response.");
            if (this.m != null) {
                this.m.a(p8, null);
                return true;
            }
            return true;
        }
    }
    
    final void b(final String s) {
        if (!this.c) {
            this.d("Illegal state for operation (" + s + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + s);
        }
    }
    
    public final boolean b() {
        return this.d;
    }
    
    final void c() {
        this.c("Ending async operation: " + this.f);
        this.f = "";
        this.e = false;
    }
    
    final void c(final String s) {
        if (this.a) {
            Log.d(this.b, s);
        }
    }
    
    final void d(final String str) {
        Log.e(this.b, "In-app billing error: " + str);
    }
}
