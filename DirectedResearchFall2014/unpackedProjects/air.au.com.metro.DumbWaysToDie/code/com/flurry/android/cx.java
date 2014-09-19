package com.flurry.android;

final class cx
{
    static cz a(final FlurryAds flurryAds, final String s) {
        final long l = flurryAds.L();
        flurryAds.M();
        final cz cz = new cz(l, s);
        flurryAds.a(cz);
        return cz;
    }
    
    static AdCreative b(final AdSpaceLayout adSpaceLayout) {
        return new AdCreative(adSpaceLayout.getAdHeight(), adSpaceLayout.getAdWidth(), adSpaceLayout.getFormat().toString(), adSpaceLayout.getFix().toString(), adSpaceLayout.getAlignment().toString());
    }
}
