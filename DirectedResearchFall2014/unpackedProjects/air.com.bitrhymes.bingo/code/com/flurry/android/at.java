package com.flurry.android;

import java.util.*;
import android.content.*;
import android.widget.*;
import android.view.*;

final class at extends bf
{
    private static final Map<Class<? extends ViewGroup>, ck> bO;
    private static final String d;
    private final p bP;
    
    static {
        d = at.class.getSimpleName();
        final HashMap<Class<RelativeLayout>, cf> m = new HashMap<Class<RelativeLayout>, cf>();
        m.put(LinearLayout.class, new cf());
        m.put((Class<LinearLayout>)AbsoluteLayout.class, (cf)new bl());
        m.put((Class<LinearLayout>)FrameLayout.class, (cf)new ap());
        m.put((Class<LinearLayout>)RelativeLayout.class, (cf)new ad());
        bO = Collections.unmodifiableMap((Map<? extends Class<? extends ViewGroup>, ? extends ck>)m);
    }
    
    public at(final p bp, final AdUnit adUnit) {
        super(adUnit);
        this.bP = bp;
    }
    
    @Override
    public final void a(final Context context, final ViewGroup viewGroup) {
        new StringBuilder().append("render(").append(context).append(", ").append(viewGroup).append(")").toString();
        if (this.bP == null || context == null || viewGroup == null) {
            new StringBuilder().append("failed to render banner ad for bannerView = ").append(this.bP).append(" for context = ").append(context).append(" for viewGroup = ").append(viewGroup).toString();
            return;
        }
        final FlurryAds instance = FlurryAds.getInstance();
        final ac a = instance.cL.a(instance, context, viewGroup, this.Y());
        if (a == null) {
            new StringBuilder().append("failed to render banner ad for holder = ").append(a).append(" for adSpaceName = ").append(this.Y()).toString();
            return;
        }
        final ViewGroup viewGroup2 = (ViewGroup)a.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView((View)a);
        }
        a.stop();
        a.removeAllViews();
        final ViewGroup viewGroup3 = (ViewGroup)this.bP.getParent();
        if (viewGroup3 != null) {
            viewGroup3.removeView((View)this.bP);
        }
        a.addView((View)this.bP, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.bP.initLayout(context);
        ViewGroup$LayoutParams a2;
        if (this.E() == null || this.E().getAdFrames().size() < 1) {
            a2 = null;
        }
        else {
            final AdSpaceLayout adSpaceLayout = this.E().getAdFrames().get(0).getAdSpaceLayout();
            if (adSpaceLayout == null) {
                a2 = null;
            }
            else {
                final ck ck = at.bO.get(viewGroup.getClass());
                if (ck == null) {
                    new StringBuilder().append("Ad space layout and alignment from the server is being ignored for ViewGroup subclass ").append(viewGroup.getClass().getSimpleName()).toString();
                    a2 = null;
                }
                else {
                    a2 = ck.a(context, adSpaceLayout);
                    if (a2 == null) {
                        new StringBuilder().append("Ad space layout and alignment from the server is being ignored for ViewGroup subclass ").append(viewGroup.getClass().getSimpleName()).toString();
                    }
                }
            }
        }
        if (a2 != null) {
            a.setLayoutParams(a2);
            new StringBuilder().append("banner ad holder layout params = ").append(a2.getClass().getName()).append(" {width = ").append(a2.width).append(", height = ").append(a2.height).append("} for banner ad with adSpaceName = ").append(this.Y()).toString();
        }
        int childCount = viewGroup.getChildCount();
        if (this.E() != null && this.E().getAdFrames().size() >= 1) {
            final AdSpaceLayout adSpaceLayout2 = this.E().getAdFrames().get(0).getAdSpaceLayout();
            if (adSpaceLayout2 != null) {
                final String[] split = adSpaceLayout2.getAlignment().toString().split("-");
                if (split.length == 2 && "t".equals(split[0])) {
                    childCount = 0;
                }
            }
        }
        viewGroup.addView((View)a, childCount);
    }
}
