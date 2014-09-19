package com.google.ads;

import java.lang.ref.*;
import android.app.*;
import java.util.*;
import android.content.*;
import com.google.ads.mediation.*;
import com.google.ads.util.*;

class i implements Runnable
{
    private final h a;
    private final String b;
    private final AdRequest c;
    private final HashMap<String, String> d;
    private final boolean e;
    private final WeakReference<Activity> f;
    
    public i(final h a, final Activity referent, final String b, final AdRequest c, final HashMap<String, String> m) {
        super();
        this.a = a;
        this.b = b;
        this.f = new WeakReference<Activity>(referent);
        this.c = c;
        this.d = new HashMap<String, String>(m);
        this.e = a(this.d);
    }
    
    private <T extends NetworkExtras, U extends MediationServerParameters> void a(final MediationAdapter<T, U> mediationAdapter) throws MediationServerParameters.MappingException, a, IllegalAccessException, InstantiationException {
        final Activity activity = this.f.get();
        if (activity == null) {
            throw new a("Activity became null while trying to instantiate adapter.");
        }
        this.a.a(mediationAdapter);
        final Class<MediationServerParameters> serverParametersType = mediationAdapter.getServerParametersType();
        MediationServerParameters mediationServerParameters2;
        if (serverParametersType != null) {
            final MediationServerParameters mediationServerParameters = serverParametersType.newInstance();
            mediationServerParameters.load(this.d);
            mediationServerParameters2 = mediationServerParameters;
        }
        else {
            mediationServerParameters2 = null;
        }
        final Class<T> additionalParametersType = mediationAdapter.getAdditionalParametersType();
        NetworkExtras networkExtras;
        if (additionalParametersType != null) {
            networkExtras = this.c.getNetworkExtras((Class<NetworkExtras>)additionalParametersType);
        }
        else {
            networkExtras = null;
        }
        final MediationAdRequest mediationAdRequest = new MediationAdRequest(this.c, (Context)activity, this.e);
        if (this.a.a.a()) {
            if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
                throw new a("Adapter " + this.b + " doesn't support the MediationInterstitialAdapter" + " interface.");
            }
            ((MediationInterstitialAdapter<NetworkExtras, MediationServerParameters>)mediationAdapter).requestInterstitialAd(new k(this.a), activity, mediationServerParameters2, mediationAdRequest, networkExtras);
        }
        else {
            if (!(mediationAdapter instanceof MediationBannerAdapter)) {
                throw new a("Adapter " + this.b + " doesn't support the MediationBannerAdapter interface");
            }
            ((MediationBannerAdapter<NetworkExtras, MediationServerParameters>)mediationAdapter).requestBannerAd(new j(this.a), activity, mediationServerParameters2, this.a.a.c(), mediationAdRequest, networkExtras);
        }
        this.a.k();
    }
    
    private void a(final String s, final Throwable t, final g.a a) {
        com.google.ads.util.b.b(s, t);
        this.a.a(false, a);
    }
    
    private static boolean a(final Map<String, String> map) {
        final String str = map.remove("gwhirl_share_location");
        if ("1".equals(str)) {
            return true;
        }
        if (str != null && !"0".equals(str)) {
            b.b("Received an illegal value, '" + str + "', for the special share location parameter from mediation server" + " (expected '0' or '1'). Will not share the location.");
        }
        return false;
    }
    
    @Override
    public void run() {
        try {
            com.google.ads.util.b.a("Trying to instantiate: " + this.b);
            this.a((MediationAdapter<NetworkExtras, MediationServerParameters>)g.a(this.b, (Class<MediationAdapter<T, U>>)MediationAdapter.class));
        }
        catch (ClassNotFoundException ex) {
            this.a("Cannot find adapter class '" + this.b + "'. Did you link the ad network's mediation adapter? Skipping ad network.", ex, g.a.e);
        }
        catch (Throwable t) {
            this.a("Error while creating adapter and loading ad from ad network. Skipping ad network.", t, g.a.f);
        }
    }
    
    private static class a extends Exception
    {
        public a(final String message) {
            super(message);
        }
    }
}
