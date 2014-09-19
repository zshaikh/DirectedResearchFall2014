package com.google.ads;

import java.lang.reflect.*;
import com.google.ads.mediation.*;
import android.location.*;
import com.google.ads.mediation.admob.*;
import android.content.*;
import com.google.ads.util.*;
import com.google.ads.doubleclick.*;
import android.text.*;
import java.text.*;
import java.util.*;

public class AdRequest
{
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR;
    public static final String VERSION = "6.4.1";
    private static final SimpleDateFormat a;
    private static Method b;
    private static Method c;
    private Gender d;
    private Date e;
    private Set<String> f;
    private Map<String, Object> g;
    private final Map<Class<?>, NetworkExtras> h;
    private Location i;
    private boolean j;
    private boolean k;
    private Set<String> l;
    
    static {
        while (true) {
            a = new SimpleDateFormat("yyyyMMdd");
            AdRequest.b = null;
            AdRequest.c = null;
            while (true) {
                int n = 0;
                try {
                    final Method[] methods = Class.forName("com.google.analytics.tracking.android.AdMobInfo").getMethods();
                    final int length = methods.length;
                    n = 0;
                    if (n >= length) {
                        goto Label_0122;
                    }
                    final Method method = methods[n];
                    if (method.getName().equals("getInstance") && method.getParameterTypes().length == 0) {
                        AdRequest.b = method;
                    }
                    else if (method.getName().equals("getJoinIds") && method.getParameterTypes().length == 0) {
                        AdRequest.c = method;
                    }
                }
                catch (ClassNotFoundException ex) {
                    com.google.ads.util.b.a("No Google Analytics: Library Not Found.");
                }
                catch (Throwable t) {
                    com.google.ads.util.b.a("No Google Analytics: Error Loading Library");
                    goto Label_0113;
                }
                ++n;
                continue;
            }
        }
    }
    
    public AdRequest() {
        super();
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = new HashMap<Class<?>, NetworkExtras>();
        this.i = null;
        this.j = false;
        this.k = false;
        this.l = null;
    }
    
    private AdMobAdapterExtras a() {
        synchronized (this) {
            if (this.getNetworkExtras(AdMobAdapterExtras.class) == null) {
                this.setNetworkExtras(new AdMobAdapterExtras());
            }
            return this.getNetworkExtras(AdMobAdapterExtras.class);
        }
    }
    
    @Deprecated
    public AdRequest addExtra(final String s, final Object o) {
        final AdMobAdapterExtras a = this.a();
        if (a.getExtras() == null) {
            a.setExtras(new HashMap<String, Object>());
        }
        a.getExtras().put(s, o);
        return this;
    }
    
    public AdRequest addKeyword(final String s) {
        if (this.f == null) {
            this.f = new HashSet<String>();
        }
        this.f.add(s);
        return this;
    }
    
    public AdRequest addKeywords(final Set<String> set) {
        if (this.f == null) {
            this.f = new HashSet<String>();
        }
        this.f.addAll(set);
        return this;
    }
    
    public AdRequest addMediationExtra(final String s, final Object o) {
        if (this.g == null) {
            this.g = new HashMap<String, Object>();
        }
        this.g.put(s, o);
        return this;
    }
    
    public AdRequest addTestDevice(final String s) {
        if (this.l == null) {
            this.l = new HashSet<String>();
        }
        this.l.add(s);
        return this;
    }
    
    public AdRequest clearBirthday() {
        this.e = null;
        return this;
    }
    
    public Date getBirthday() {
        return this.e;
    }
    
    public Gender getGender() {
        return this.d;
    }
    
    public Set<String> getKeywords() {
        if (this.f == null) {
            return null;
        }
        return Collections.unmodifiableSet((Set<? extends String>)this.f);
    }
    
    public Location getLocation() {
        return this.i;
    }
    
    public <T> T getNetworkExtras(final Class<T> clazz) {
        return (T)this.h.get(clazz);
    }
    
    @Deprecated
    public boolean getPlusOneOptOut() {
        return this.a().getPlusOneOptOut();
    }
    
    public Map<String, Object> getRequestMap(final Context context) {
        final HashMap<String, HashMap<String, Object>> hashMap = new HashMap<String, HashMap<String, Object>>();
        if (this.f != null) {
            hashMap.put("kw", (HashMap<String, Object>)this.f);
        }
        if (this.d != null) {
            hashMap.put("cust_gender", (HashMap<String, Object>)this.d.ordinal());
        }
        if (this.e != null) {
            hashMap.put("cust_age", (HashMap<String, Object>)AdRequest.a.format(this.e));
        }
        if (this.i != null) {
            hashMap.put("uule", AdUtil.a(this.i));
        }
        if (this.j) {
            hashMap.put("testing", (HashMap<String, Object>)1);
        }
        Label_0322: {
            if (!this.isTestDevice(context)) {
                break Label_0322;
            }
            hashMap.put("adtest", (HashMap<String, Object>)"on");
        Label_0204_Outer:
            while (true) {
                final AdMobAdapterExtras adMobAdapterExtras = this.getNetworkExtras(AdMobAdapterExtras.class);
                final DfpExtras dfpExtras = this.getNetworkExtras(DfpExtras.class);
                Label_0409: {
                    if (dfpExtras == null || dfpExtras.getExtras() == null || dfpExtras.getExtras().isEmpty()) {
                        break Label_0409;
                    }
                    hashMap.put("extras", (HashMap<String, Object>)dfpExtras.getExtras());
                    String publisherProvidedId;
                    Map map;
                    String string;
                    Label_0339_Outer:Block_18_Outer:
                    while (true) {
                        if (dfpExtras != null) {
                            publisherProvidedId = dfpExtras.getPublisherProvidedId();
                            if (!TextUtils.isEmpty((CharSequence)publisherProvidedId)) {
                                hashMap.put("ppid", (HashMap<String, Object>)publisherProvidedId);
                            }
                        }
                        if (this.g != null) {
                            hashMap.put("mediation_extras", (HashMap<String, Object>)this.g);
                        }
                        try {
                            if (AdRequest.b != null) {
                                map = (Map)AdRequest.c.invoke(AdRequest.b.invoke(null, new Object[0]), new Object[0]);
                                if (map != null && map.size() > 0) {
                                    hashMap.put("analytics_join_id", (HashMap<String, Object>)map);
                                }
                            }
                            return (Map<String, Object>)hashMap;
                            // iftrue(Label_0204:, adMobAdapterExtras == null || adMobAdapterExtras.getExtras() == null || adMobAdapterExtras.getExtras().isEmpty())
                            hashMap.put("extras", (HashMap<String, Object>)adMobAdapterExtras.getExtras());
                            continue Label_0339_Outer;
                            Label_0376: {
                                string = "\"" + AdUtil.a(context) + "\"";
                            }
                            // iftrue(Label_0142:, this.k)
                            while (true) {
                            Block_17:
                                while (true) {
                                    com.google.ads.util.b.c("To get test ads on this device, call adRequest.addTestDevice(" + string + ");");
                                    this.k = true;
                                    continue Label_0204_Outer;
                                    break Block_17;
                                    string = "AdRequest.TEST_EMULATOR";
                                    continue Block_18_Outer;
                                }
                                continue;
                            }
                        }
                        // iftrue(Label_0376:, !AdUtil.c())
                        catch (Throwable t) {
                            com.google.ads.util.b.c("Internal Analytics Error:", t);
                            return (Map<String, Object>)hashMap;
                        }
                        break;
                    }
                }
                break;
            }
        }
    }
    
    public boolean isTestDevice(final Context context) {
        if (this.l != null) {
            final String a = AdUtil.a(context);
            if (a == null) {
                return false;
            }
            if (this.l.contains(a)) {
                return true;
            }
        }
        return false;
    }
    
    public AdRequest removeNetworkExtras(final Class<?> clazz) {
        this.h.remove(clazz);
        return this;
    }
    
    @Deprecated
    public AdRequest setBirthday(final String source) {
        if (source == "" || source == null) {
            this.e = null;
            return this;
        }
        try {
            this.e = AdRequest.a.parse(source);
            return this;
        }
        catch (ParseException ex) {
            com.google.ads.util.b.e("Birthday format invalid.  Expected 'YYYYMMDD' where 'YYYY' is a 4 digit year, 'MM' is a two digit month, and 'DD' is a two digit day.  Birthday value ignored");
            this.e = null;
            return this;
        }
    }
    
    public AdRequest setBirthday(final Calendar calendar) {
        if (calendar == null) {
            this.e = null;
            return this;
        }
        this.setBirthday(calendar.getTime());
        return this;
    }
    
    public AdRequest setBirthday(final Date date) {
        if (date == null) {
            this.e = null;
            return this;
        }
        this.e = new Date(date.getTime());
        return this;
    }
    
    @Deprecated
    public AdRequest setExtras(final Map<String, Object> extras) {
        this.a().setExtras(extras);
        return this;
    }
    
    public AdRequest setGender(final Gender d) {
        this.d = d;
        return this;
    }
    
    public AdRequest setKeywords(final Set<String> f) {
        this.f = f;
        return this;
    }
    
    public AdRequest setLocation(final Location i) {
        this.i = i;
        return this;
    }
    
    public AdRequest setMediationExtras(final Map<String, Object> g) {
        this.g = g;
        return this;
    }
    
    public AdRequest setNetworkExtras(final NetworkExtras networkExtras) {
        if (networkExtras != null) {
            this.h.put(networkExtras.getClass(), networkExtras);
        }
        return this;
    }
    
    @Deprecated
    public AdRequest setPlusOneOptOut(final boolean plusOneOptOut) {
        this.a().setPlusOneOptOut(plusOneOptOut);
        return this;
    }
    
    public AdRequest setTestDevices(final Set<String> l) {
        this.l = l;
        return this;
    }
    
    @Deprecated
    public AdRequest setTesting(final boolean j) {
        this.j = j;
        return this;
    }
    
    public enum ErrorCode
    {
        INTERNAL_ERROR("There was an internal error."), 
        INVALID_REQUEST("Invalid Ad request."), 
        NETWORK_ERROR("A network error occurred."), 
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory.");
        
        private final String a;
        
        private ErrorCode(final String a) {
            this.a = a;
        }
        
        @Override
        public String toString() {
            return this.a;
        }
    }
    
    public enum Gender
    {
        FEMALE, 
        MALE, 
        UNKNOWN;
    }
}
