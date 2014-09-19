package com.google.ads;

import android.app.*;
import android.content.*;
import android.view.*;
import com.google.ads.util.*;
import android.util.*;
import android.content.res.*;
import java.util.*;
import android.widget.*;
import com.google.ads.internal.*;
import android.webkit.*;

public class AdView extends RelativeLayout implements Ad
{
    private static final a b;
    protected d a;
    
    static {
        b = a.a.b();
    }
    
    public AdView(final Activity activity, final AdSize adSize, final String s) {
        super(activity.getApplicationContext());
        try {
            this.a((Context)activity, adSize, null);
            this.b((Context)activity, adSize, null);
            this.a(activity, adSize, s);
        }
        catch (b b) {
            this.a((Context)activity, b.c("Could not initialize AdView"), adSize, null);
            b.a("Could not initialize AdView");
        }
    }
    
    protected AdView(final Activity activity, final AdSize[] array, final String s) {
        this(activity, new AdSize(0, 0), s);
        this.a(array);
    }
    
    public AdView(final Context context, final AttributeSet set) {
        super(context, set);
        this.a(context, set);
    }
    
    public AdView(final Context context, final AttributeSet set, final int n) {
        this(context, set);
    }
    
    private void a(final Activity activity, final AdSize adSize, final String s) throws b {
        final FrameLayout frameLayout = new FrameLayout((Context)activity);
        frameLayout.setFocusable(false);
        this.a = new d(this, activity, adSize, s, (ViewGroup)frameLayout, false);
        this.setGravity(17);
        try {
            final ViewGroup a = k.a(activity, this.a);
            if (a != null) {
                a.addView((View)frameLayout, -2, -2);
                this.addView((View)a, -2, -2);
                return;
            }
            this.addView((View)frameLayout, -2, -2);
        }
        catch (VerifyError verifyError) {
            com.google.ads.util.b.a("Gestures disabled: Not supported on this version of Android.", verifyError);
            this.addView((View)frameLayout, -2, -2);
        }
    }
    
    private void a(final Context context, final AttributeSet set) {
        if (set != null) {
            while (true) {
                try {
                    final String b = this.b("adSize", context, set, true);
                    final AdSize[] a = this.a(b);
                    Label_0128: {
                        AdSize[] array = null;
                        Label_0035: {
                            if (a == null) {
                                break Label_0035;
                            }
                            try {
                                if (a.length == 0) {
                                    throw new b("Attribute \"adSize\" invalid: " + b, true);
                                }
                                break Label_0128;
                            }
                            catch (b b2) {
                                array = a;
                            }
                        }
                        final b b2;
                        final String c = b2.c("Could not initialize AdView");
                        AdSize banner;
                        if (array != null && array.length > 0) {
                            banner = array[0];
                        }
                        else {
                            banner = AdSize.BANNER;
                        }
                        this.a(context, c, banner, set);
                        b2.a("Could not initialize AdView");
                        if (!this.isInEditMode()) {
                            b2.b("Could not initialize AdView");
                            return;
                        }
                        return;
                    }
                    if (!this.a("adUnitId", set)) {
                        throw new b("Required XML attribute \"adUnitId\" missing", true);
                    }
                    if (this.isInEditMode()) {
                        this.a(context, "Ads by Google", -1, a[0], set);
                        return;
                    }
                    final String b3 = this.b("adUnitId", context, set, true);
                    final boolean a2 = this.a("loadAdOnCreate", context, set, false);
                    if (!(context instanceof Activity)) {
                        throw new b("AdView was initialized with a Context that wasn't an Activity.", true);
                    }
                    final Activity activity = (Activity)context;
                    this.a((Context)activity, a[0], set);
                    this.b((Context)activity, a[0], set);
                    if (a.length == 1) {
                        this.a(activity, a[0], b3);
                    }
                    else {
                        this.a(activity, new AdSize(0, 0), b3);
                        this.a(a);
                    }
                    if (a2) {
                        final Set<String> c2 = this.c("testDevices", context, set, false);
                        if (c2.contains("TEST_EMULATOR")) {
                            c2.remove("TEST_EMULATOR");
                            c2.add(AdRequest.TEST_EMULATOR);
                        }
                        this.loadAd(new AdRequest().setTestDevices(c2).setKeywords(this.c("keywords", context, set, false)));
                    }
                }
                catch (b b4) {
                    final b b2 = b4;
                    final AdSize[] array = null;
                    continue;
                }
                break;
            }
        }
    }
    
    private void a(final Context context, final String s, final AdSize adSize, final AttributeSet set) {
        com.google.ads.util.b.b(s);
        this.a(context, s, -65536, adSize, set);
    }
    
    private void a(final AdSize... array) {
        final AdSize[] array2 = new AdSize[array.length];
        for (int i = 0; i < array.length; ++i) {
            array2[i] = AdSize.createAdSize(array[i], this.getContext());
        }
        this.a.i().n.a(array2);
    }
    
    private boolean a(final Context context, final AdSize adSize, final AttributeSet set) {
        if (!AdUtil.c(context)) {
            this.a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", adSize, set);
            return false;
        }
        return true;
    }
    
    private boolean a(final String s, final Context context, final AttributeSet set, final boolean b) throws b {
        final String attributeValue = set.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", s);
        final boolean attributeBooleanValue = set.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", s, b);
        if (attributeValue != null) {
            final String packageName = context.getPackageName();
            String replaceFirst2;
            String str;
            if (attributeValue.matches("^@([^:]+)\\:(.*)$")) {
                final String replaceFirst = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                replaceFirst2 = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
                str = replaceFirst;
            }
            else {
                replaceFirst2 = attributeValue;
                str = packageName;
            }
            if (replaceFirst2.startsWith("@bool/")) {
                final String substring = replaceFirst2.substring("@bool/".length());
                final TypedValue obj = new TypedValue();
                try {
                    this.getResources().getValue(str + ":bool/" + substring, obj, true);
                    if (obj.type != 18) {
                        throw new b("Resource " + s + " was not a boolean: " + obj, true);
                    }
                    if (obj.data != 0) {
                        return true;
                    }
                }
                catch (Resources$NotFoundException ex) {
                    throw new b("Could not find resource for " + s + ": " + replaceFirst2, true, (Throwable)ex);
                }
                return false;
            }
        }
        return attributeBooleanValue;
    }
    
    private boolean a(final String s, final AttributeSet set) {
        return set.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", s) != null;
    }
    
    private String b(final String str, final Context context, final AttributeSet set, final boolean b) throws b {
        String s = set.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", str);
        final TypedValue obj;
        Label_0150: {
            if (s == null) {
                break Label_0150;
            }
            final String packageName = context.getPackageName();
            String replaceFirst2;
            String str2;
            if (s.matches("^@([^:]+)\\:(.*)$")) {
                final String replaceFirst = s.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                replaceFirst2 = s.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
                str2 = replaceFirst;
            }
            else {
                replaceFirst2 = s;
                str2 = packageName;
            }
            if (!replaceFirst2.startsWith("@string/")) {
                s = replaceFirst2;
                break Label_0150;
            }
            final String substring = replaceFirst2.substring("@string/".length());
            obj = new TypedValue();
            try {
                this.getResources().getValue(str2 + ":string/" + substring, obj, true);
                if (obj.string != null) {
                    s = obj.string.toString();
                    if (b && s == null) {
                        throw new b("Required XML attribute \"" + str + "\" missing", true);
                    }
                    return s;
                }
            }
            catch (Resources$NotFoundException ex) {
                throw new b("Could not find resource for " + str + ": " + replaceFirst2, true, (Throwable)ex);
            }
        }
        throw new b("Resource " + str + " was not a string: " + obj, true);
    }
    
    private boolean b(final Context context, final AdSize adSize, final AttributeSet set) {
        if (!AdUtil.b(context)) {
            this.a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", adSize, set);
            return false;
        }
        return true;
    }
    
    private Set<String> c(final String s, final Context context, final AttributeSet set, final boolean b) throws b {
        final String b2 = this.b(s, context, set, b);
        final HashSet<String> set2 = new HashSet<String>();
        if (b2 != null) {
            final String[] split = b2.split(",");
            for (int length = split.length, i = 0; i < length; ++i) {
                final String trim = split[i].trim();
                if (trim.length() != 0) {
                    set2.add(trim);
                }
            }
        }
        return set2;
    }
    
    void a(final Context context, final String text, final int n, final AdSize adSize, final AttributeSet set) {
        AdSize banner;
        if (adSize == null) {
            banner = AdSize.BANNER;
        }
        else {
            banner = adSize;
        }
        final AdSize adSize2 = AdSize.createAdSize(banner, context.getApplicationContext());
        if (this.getChildCount() == 0) {
            TextView textView;
            if (set == null) {
                textView = new TextView(context);
            }
            else {
                textView = new TextView(context, set);
            }
            textView.setGravity(17);
            textView.setText((CharSequence)text);
            textView.setTextColor(n);
            textView.setBackgroundColor(-16777216);
            LinearLayout linearLayout;
            if (set == null) {
                linearLayout = new LinearLayout(context);
            }
            else {
                linearLayout = new LinearLayout(context, set);
            }
            linearLayout.setGravity(17);
            LinearLayout linearLayout2;
            if (set == null) {
                linearLayout2 = new LinearLayout(context);
            }
            else {
                linearLayout2 = new LinearLayout(context, set);
            }
            linearLayout2.setGravity(17);
            linearLayout2.setBackgroundColor(n);
            final int a = AdUtil.a(context, adSize2.getWidth());
            final int a2 = AdUtil.a(context, adSize2.getHeight());
            linearLayout.addView((View)textView, a - 2, a2 - 2);
            linearLayout2.addView((View)linearLayout);
            this.addView((View)linearLayout2, a, a2);
        }
    }
    
    AdSize[] a(final String s) {
        final String[] split = s.split(",");
        final AdSize[] array = new AdSize[split.length];
        int i = 0;
    Label_0126_Outer:
        while (i < split.length) {
            final String trim = split[i].trim();
            while (true) {
                Label_0165: {
                    if (!trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                        break Label_0165;
                    }
                    final String[] split2 = trim.split("[xX]");
                    split2[0] = split2[0].trim();
                    split2[1] = split2[1].trim();
                    AdSize adSize = null;
                    Label_0285: {
                        try {
                            int int1;
                            if ("FULL_WIDTH".equals(split2[0])) {
                                int1 = -1;
                            }
                            else {
                                int1 = Integer.parseInt(split2[0]);
                            }
                            int int2;
                            if ("AUTO_HEIGHT".equals(split2[1])) {
                                int2 = -2;
                            }
                            else {
                                int2 = Integer.parseInt(split2[1]);
                            }
                            adSize = new AdSize(int1, int2);
                            if (adSize == null) {
                                return null;
                            }
                            break Label_0285;
                        }
                        catch (NumberFormatException ex) {
                            return null;
                        }
                        break Label_0165;
                    }
                    array[i] = adSize;
                    ++i;
                    continue Label_0126_Outer;
                }
                if ("BANNER".equals(trim)) {
                    final AdSize adSize = AdSize.BANNER;
                    continue;
                }
                if ("SMART_BANNER".equals(trim)) {
                    final AdSize adSize = AdSize.SMART_BANNER;
                    continue;
                }
                if ("IAB_MRECT".equals(trim)) {
                    final AdSize adSize = AdSize.IAB_MRECT;
                    continue;
                }
                if ("IAB_BANNER".equals(trim)) {
                    final AdSize adSize = AdSize.IAB_BANNER;
                    continue;
                }
                if ("IAB_LEADERBOARD".equals(trim)) {
                    final AdSize adSize = AdSize.IAB_LEADERBOARD;
                    continue;
                }
                if ("IAB_WIDE_SKYSCRAPER".equals(trim)) {
                    final AdSize adSize = AdSize.IAB_WIDE_SKYSCRAPER;
                    continue;
                }
                AdSize adSize = null;
                continue;
            }
        }
        return array;
    }
    
    public void destroy() {
        this.a.b();
    }
    
    public boolean isReady() {
        return this.a != null && this.a.s();
    }
    
    public boolean isRefreshing() {
        return this.a != null && this.a.t();
    }
    
    public void loadAd(final AdRequest adRequest) {
        if (this.a != null) {
            if (this.isRefreshing()) {
                this.a.f();
            }
            this.a.a(adRequest);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (!this.isInEditMode()) {
            final AdWebView l = this.a.l();
            if (l != null) {
                l.setVisibility(0);
            }
        }
        super.onMeasure(n, n2);
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        if (this.isInEditMode() || !this.a.i().g.a().b() || n == 0 || this.a.i().l.a() == null || this.a.i().e.a() == null) {
            return;
        }
        if (AdActivity.isShowing() && !AdActivity.leftApplication()) {
            AdView.b.a(this.a.i().e.a(), "onopeninapp", null);
            return;
        }
        AdView.b.a(this.a.i().e.a(), "onleaveapp", null);
    }
    
    public void setAdListener(final AdListener adListener) {
        this.a.i().o.a(adListener);
    }
    
    protected void setAppEventListener(final AppEventListener appEventListener) {
        this.a.i().p.a(appEventListener);
    }
    
    protected void setSupportedAdSizes(final AdSize... array) {
        if (this.a.i().n.a() == null) {
            com.google.ads.util.b.e("Warning: Tried to set supported ad sizes on a single-size AdView. AdSizes ignored. To create a multi-sized AdView, use an AdView constructor that takes in an AdSize[] array.");
            return;
        }
        this.a(array);
    }
    
    protected void setSwipeableEventListener(final SwipeableAdListener swipeableAdListener) {
        this.a.i().q.a(swipeableAdListener);
    }
    
    public void stopLoading() {
        if (this.a != null) {
            this.a.C();
        }
    }
}
