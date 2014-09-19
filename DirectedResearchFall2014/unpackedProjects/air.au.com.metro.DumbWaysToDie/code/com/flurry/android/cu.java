package com.flurry.android;

import android.content.*;

final class cu extends bk
{
    private /* synthetic */ Context eO;
    private /* synthetic */ String eS;
    private /* synthetic */ AdUnit eT;
    private /* synthetic */ boolean eU;
    private /* synthetic */ FlurryAds ee;
    
    cu(final FlurryAds ee, final String es, final AdUnit et, final Context eo, final boolean eu) {
        this.ee = ee;
        this.eS = es;
        this.eT = et;
        this.eO = eo;
        this.eU = eu;
        super();
    }
    
    @Override
    public final void a() {
        if (this.eS != null) {
            final String string = this.eT.getAdSpace().toString();
            if (this.eS.startsWith("market://")) {
                this.ee.a(this.eO, this.eS, this.eT);
            }
            else if (this.eS.startsWith("http")) {
                final Intent intent = new Intent(this.eO, (Class)FlurryFullscreenTakeoverActivity.class);
                intent.putExtra("url", this.eS);
                if (this.eU && bd.a(this.eO, intent)) {
                    this.ee.a(this.eO, intent, string);
                    return;
                }
                db.d(FlurryAds.d, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml");
                this.ee.b(this.eO, this.eS, string);
            }
            else if (!this.ee.b(this.eO, this.eS, string)) {
                db.g(FlurryAds.d, "Failed to launch intent for:" + this.eS);
            }
            return;
        }
        db.g(FlurryAds.d, "Unable to launch intent for: " + this.eS);
    }
}
