package c.m.x.a.gv;

import android.view.animation.*;

final class q implements Animation$AnimationListener
{
    final /* synthetic */ e a;
    final /* synthetic */ o b;
    
    q(final o b, final e a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    public final void onAnimationEnd(final Animation animation) {
        if (this.a.mAnimatingAway != null) {
            this.a.mAnimatingAway = null;
            this.b.a(this.a, this.a.mStateAfterAnimating, 0, 0, false);
        }
    }
    
    public final void onAnimationRepeat(final Animation animation) {
    }
    
    public final void onAnimationStart(final Animation animation) {
    }
}
