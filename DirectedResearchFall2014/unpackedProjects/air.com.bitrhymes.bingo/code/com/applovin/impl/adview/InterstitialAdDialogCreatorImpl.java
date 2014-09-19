package com.applovin.impl.adview;

import java.lang.ref.*;
import com.applovin.sdk.*;
import android.app.*;
import com.applovin.adview.*;
import android.content.*;

public class InterstitialAdDialogCreatorImpl implements InterstitialAdDialogCreator
{
    private static final Object a;
    private static WeakReference b;
    private static WeakReference c;
    
    static {
        a = new Object();
        InterstitialAdDialogCreatorImpl.b = new WeakReference(null);
        InterstitialAdDialogCreatorImpl.c = new WeakReference(null);
    }
    
    @Override
    public AppLovinInterstitialAdDialog createInterstitialAdDialog(final AppLovinSdk appLovinSdk, final Activity referent) {
        while (true) {
            Label_0123: {
                if (appLovinSdk != null) {
                    break Label_0123;
                }
                final AppLovinSdk instance = AppLovinSdk.getInstance((Context)referent);
                synchronized (InterstitialAdDialogCreatorImpl.a) {
                    final ah ah = (ah)InterstitialAdDialogCreatorImpl.b.get();
                    ah ah2;
                    if (ah == null || !ah.isShowing() || InterstitialAdDialogCreatorImpl.c.get() != referent) {
                        final ah referent2 = new ah(instance, referent);
                        InterstitialAdDialogCreatorImpl.b = new WeakReference(referent2);
                        InterstitialAdDialogCreatorImpl.c = new WeakReference((T)referent);
                        ah2 = referent2;
                    }
                    else {
                        instance.getLogger().w("InterstitialAdDialogCreator", "An interstitial dialog is already showing, returning it");
                        ah2 = ah;
                    }
                    return ah2;
                }
            }
            final AppLovinSdk instance = appLovinSdk;
            continue;
        }
    }
}
