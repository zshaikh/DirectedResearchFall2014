package com.inmobi.androidsdk.impl;

import com.inmobi.androidsdk.*;
import android.content.*;
import android.location.*;
import android.os.*;
import com.inmobi.commons.internal.*;
import com.inmobi.commons.*;
import android.content.pm.*;
import java.util.*;

public final class IMUserInfo
{
    private Random A;
    private String B;
    private int C;
    private int D;
    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private LocationManager l;
    private String m;
    private double n;
    private double o;
    private double p;
    private boolean q;
    private Context r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private IMAdRequest z;
    
    public IMUserInfo(final Context r) {
        super();
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.C = -1;
        this.r = r;
        this.A = new Random();
    }
    
    private String a() {
        return this.f;
    }
    
    private void a(final double n) {
        this.n = n;
    }
    
    private void a(final int i) {
        this.g = Integer.toString(i);
    }
    
    private void a(final Context context) {
        try {
            if (this.B == null) {
                this.B = context.getSharedPreferences("inmobisdkaid", 0).getString("A_ID", (String)null);
            }
            if (this.B == null) {
                this.B = UUID.randomUUID().toString();
                final SharedPreferences$Editor edit = context.getSharedPreferences("inmobisdkaid", 0).edit();
                edit.putString("A_ID", this.B);
                edit.commit();
            }
        }
        catch (Exception ex) {}
    }
    
    private void a(final Location location) {
        if (location != null) {
            this.b(true);
            this.a(location.getLatitude());
            this.b(location.getLongitude());
            this.c(location.getAccuracy());
        }
    }
    
    private void a(final LocationManager l) {
        synchronized (this) {
            this.l = l;
        }
    }
    
    private void a(final IMAdRequest z) {
        this.z = z;
    }
    
    private void a(final String b) {
        this.b = b;
    }
    
    private void a(final boolean a) {
        this.a = a;
    }
    
    private String b() {
        return this.j;
    }
    
    private void b(final double o) {
        this.o = o;
    }
    
    private void b(final int d) {
        this.D = d;
    }
    
    private void b(final String c) {
        this.c = c;
    }
    
    private void b(final boolean q) {
        this.q = q;
    }
    
    private LocationManager c() {
        synchronized (this) {
            return this.l;
        }
    }
    
    private void c(final double p) {
        this.p = p;
    }
    
    private void c(final String d) {
        this.d = d;
    }
    
    private void d(final String e) {
        this.e = e;
    }
    
    private boolean d() {
        return this.z == null || this.z.isLocationInquiryAllowed();
    }
    
    private void e(final String f) {
        this.f = f;
    }
    
    private boolean e() {
        return this.a;
    }
    
    private void f() {
        try {
            if (this.c() == null) {
                this.a((LocationManager)this.getApplicationContext().getSystemService("location"));
            }
            if (this.c() != null) {
                final LocationManager c = this.c();
                final Criteria criteria = new Criteria();
                if (this.getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                    criteria.setAccuracy(1);
                }
                else if (this.getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    criteria.setAccuracy(2);
                }
                criteria.setCostAllowed(false);
                final String bestProvider = c.getBestProvider(criteria, true);
                if (!this.isValidGeoInfo() && bestProvider != null) {
                    Location location = c.getLastKnownLocation(bestProvider);
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "lastBestKnownLocation: " + location);
                    if (location == null) {
                        location = this.g();
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "lastKnownLocation: " + location);
                    }
                    this.a(location);
                }
            }
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Error getting the Location Info ", ex);
        }
    }
    
    private void f(final String h) {
        this.h = h;
    }
    
    private Location g() {
        if (this.c() == null) {
            this.a((LocationManager)this.getApplicationContext().getSystemService("location"));
        }
        if (this.c() != null) {
            final LocationManager c = this.c();
            final List providers = c.getProviders(true);
            for (int i = providers.size() - 1; i >= 0; --i) {
                final String s = providers.get(i);
                if (c.isProviderEnabled(s)) {
                    final Location lastKnownLocation = c.getLastKnownLocation(s);
                    if (lastKnownLocation != null) {
                        return lastKnownLocation;
                    }
                }
            }
        }
        return null;
    }
    
    private void g(final String i) {
        this.i = i;
    }
    
    private void h() {
        final int checkCallingOrSelfPermission = this.getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION");
        final int checkCallingOrSelfPermission2 = this.getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
        if (checkCallingOrSelfPermission != 0 && checkCallingOrSelfPermission2 != 0) {
            this.a(true);
            return;
        }
        this.a(false);
    }
    
    private void h(final String j) {
        this.j = j;
    }
    
    private void i() {
    Label_0230:
        while (true) {
            if (this.b() != null) {
                break Label_0230;
            }
            this.h(Build.BRAND);
            final Locale default1 = Locale.getDefault();
            final String language = default1.getLanguage();
            Label_0363: {
                if (language == null) {
                    break Label_0363;
                }
                final String lowerCase = language.toLowerCase();
                final String country = default1.getCountry();
                String s;
                if (country != null) {
                    s = String.valueOf(lowerCase) + "_" + country.toLowerCase();
                }
                else {
                    s = lowerCase;
                }
                Context applicationContext;
                PackageManager packageManager;
                ApplicationInfo applicationInfo;
                PackageInfo packageInfo;
                String versionName = null;
                String string;
                String idType;
                String idType2;
                int deviceIdMask;
                int orientation;
                String obj;
                String str;
                Label_0208_Outer:Label_0429_Outer:
                while (true) {
                    this.g(s);
                    while (true) {
                        while (true) {
                            Label_0488: {
                                Label_0481: {
                                    while (true) {
                                        try {
                                            applicationContext = this.getApplicationContext();
                                            packageManager = applicationContext.getPackageManager();
                                            applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128);
                                            if (applicationInfo != null) {
                                                this.a(applicationInfo.packageName);
                                                this.b(applicationInfo.loadLabel(packageManager).toString());
                                            }
                                            packageInfo = packageManager.getPackageInfo(applicationContext.getPackageName(), 128);
                                            if (packageInfo == null) {
                                                break Label_0488;
                                            }
                                            versionName = packageInfo.versionName;
                                            if (versionName != null && !versionName.equals("")) {
                                                break Label_0481;
                                            }
                                            string = new StringBuilder(String.valueOf(packageInfo.versionCode)).toString();
                                            if (string != null && !string.equals("")) {
                                                this.c(string);
                                            }
                                            this.e(InternalSDKUtil.getODIN1(InternalSDKUtil.getAndroidId(this.getApplicationContext())));
                                            this.a(this.A.nextInt());
                                            if (this.z != null) {
                                                idType = this.z.getIDType(IMAdRequest.IMIDType.ID_LOGIN);
                                                idType2 = this.z.getIDType(IMAdRequest.IMIDType.ID_SESSION);
                                                deviceIdMask = IMCommonUtil.getDeviceIdMask();
                                                this.f(InternalSDKUtil.getUIDMap(idType, idType2, this.a(), null, deviceIdMask, this.getRandomKey()));
                                                if (this.r != null) {
                                                    this.a(this.r.getApplicationContext());
                                                }
                                                this.d(InternalSDKUtil.getConnectivityType(this.getApplicationContext()));
                                                try {
                                                    orientation = this.getApplicationContext().getResources().getConfiguration().orientation;
                                                    if (orientation == 2) {
                                                        this.b(3);
                                                    }
                                                    else if (orientation == 1) {
                                                        this.b(1);
                                                        return;
                                                    }
                                                    return;
                                                    s = String.valueOf(obj) + "_" + str;
                                                    // iftrue(Label_0081:, s != null)
                                                    s = "en";
                                                    continue Label_0208_Outer;
                                                    obj = ((Hashtable<K, String>)System.getProperties()).get("user.language");
                                                    str = ((Hashtable<K, String>)System.getProperties()).get("user.region");
                                                }
                                                // iftrue(Label_0494:, obj == null || str == null)
                                                catch (Exception ex) {
                                                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Error getting the orientation info ", ex);
                                                    return;
                                                }
                                            }
                                        }
                                        catch (Exception ex2) {
                                            continue Label_0230;
                                        }
                                        idType = null;
                                        idType2 = null;
                                        deviceIdMask = 0;
                                        continue Label_0429_Outer;
                                    }
                                }
                                string = versionName;
                                continue Label_0429_Outer;
                            }
                            string = null;
                            continue Label_0429_Outer;
                        }
                        Label_0494: {
                            s = language;
                        }
                        continue;
                    }
                }
            }
            break;
        }
    }
    
    private void i(final String k) {
        this.k = k;
    }
    
    public String getAdUnitSlot() {
        return this.v;
    }
    
    public int getAge() {
        if (this.z != null) {
            return this.z.getAge();
        }
        return 0;
    }
    
    public String getAid() {
        return this.B;
    }
    
    public String getAppBId() {
        return this.b;
    }
    
    public String getAppDisplayName() {
        return this.c;
    }
    
    public String getAppVer() {
        return this.d;
    }
    
    protected Context getApplicationContext() {
        return this.r;
    }
    
    public String getAreaCode() {
        if (this.z != null) {
            return this.z.getAreaCode();
        }
        return null;
    }
    
    public String getDateOfBirth() {
        if (this.z == null) {
            return null;
        }
        if (this.z.getDateOfBirth() != null) {
            final Calendar dateOfBirth = this.z.getDateOfBirth();
            return String.valueOf(dateOfBirth.get(1)) + "-" + (1 + dateOfBirth.get(2)) + "-" + dateOfBirth.get(5);
        }
        return null;
    }
    
    public IMAdRequest.EducationType getEducation() {
        if (this.z != null) {
            return this.z.getEducation();
        }
        return null;
    }
    
    public IMAdRequest.EthnicityType getEthnicity() {
        if (this.z != null) {
            return this.z.getEthnicity();
        }
        return null;
    }
    
    public IMAdRequest.GenderType getGender() {
        if (this.z != null) {
            return this.z.getGender();
        }
        return null;
    }
    
    public int getIncome() {
        if (this.z != null) {
            return this.z.getIncome();
        }
        return 0;
    }
    
    public String getInterests() {
        if (this.z != null) {
            return this.z.getInterests();
        }
        return null;
    }
    
    public String getKeywords() {
        if (this.z != null) {
            return this.z.getKeywords();
        }
        return null;
    }
    
    public double getLat() {
        return this.n;
    }
    
    public double getLocAccuracy() {
        return this.p;
    }
    
    public String getLocalization() {
        return this.i;
    }
    
    public String getLocationWithCityStateCountry() {
        if (this.z != null) {
            return this.z.getLocationWithCityStateCountry();
        }
        return null;
    }
    
    public double getLon() {
        return this.o;
    }
    
    public String getNetworkType() {
        return this.e;
    }
    
    public int getOrientation() {
        return this.D;
    }
    
    public String getPhoneDefaultUserAgent() {
        if (this.s == null) {
            return "";
        }
        return this.s;
    }
    
    public String getPostalCode() {
        if (this.z != null) {
            return this.z.getPostalCode();
        }
        return null;
    }
    
    public String getRandomKey() {
        return this.g;
    }
    
    public String getRefTagKey() {
        return this.t;
    }
    
    public String getRefTagValue() {
        return this.u;
    }
    
    public int getRefreshType() {
        return this.C;
    }
    
    public Map<String, String> getRequestParams() {
        if (this.z != null) {
            return this.z.getRequestParams();
        }
        return null;
    }
    
    public String getRsakeyVersion() {
        return InternalSDKUtil.getRSAKeyVersion();
    }
    
    public String getScreenDensity() {
        return this.y;
    }
    
    public String getScreenSize() {
        return this.x;
    }
    
    public String getSearchString() {
        if (this.z != null) {
            return this.z.getSearchString();
        }
        return null;
    }
    
    public String getSiteId() {
        return this.k;
    }
    
    public String getSlotId() {
        return this.w;
    }
    
    public String getTestModeAdActionType() {
        return this.m;
    }
    
    public String getUIDMapEncrypted() {
        return this.h;
    }
    
    public boolean isTestMode() {
        return this.z != null && this.z.isTestMode();
    }
    
    public boolean isValidGeoInfo() {
        return this.q;
    }
    
    public void setAdUnitSlot(final String v) {
        this.v = v;
    }
    
    public void setPhoneDefaultUserAgent(final String s) {
        this.s = s;
    }
    
    public void setRefTagKey(final String t) {
        this.t = t;
    }
    
    public void setRefTagValue(final String u) {
        this.u = u;
    }
    
    public void setRefreshType(final int c) {
        if (c != 1 || c != 0) {
            this.C = -1;
        }
        this.C = c;
    }
    
    public void setScreenDensity(final String y) {
        this.y = y;
    }
    
    public void setScreenSize(final String x) {
        this.x = x;
    }
    
    public void setSlotId(final String w) {
        this.w = w;
    }
    
    public void updateInfo(final String s, final IMAdRequest imAdRequest) {
        while (true) {
            Label_0078: {
                synchronized (this) {
                    this.a(imAdRequest);
                    this.i();
                    this.i(s);
                    if (imAdRequest != null) {
                        this.b(false);
                        if (!this.d()) {
                            break Label_0078;
                        }
                        if (imAdRequest.getCurrentLocation() != null) {
                            this.a(imAdRequest.getCurrentLocation());
                            this.b(true);
                        }
                        else {
                            this.h();
                            if (!this.e()) {
                                this.f();
                            }
                        }
                    }
                    return;
                }
            }
            this.a(true);
        }
    }
}
