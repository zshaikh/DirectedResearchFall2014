.class final Lc/m/x/a/gv/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/e;

.field final synthetic b:Lc/m/x/a/gv/o;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/o;Lc/m/x/a/gv/e;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/q;->b:Lc/m/x/a/gv/o;

    iput-object p2, p0, Lc/m/x/a/gv/q;->a:Lc/m/x/a/gv/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/q;->a:Lc/m/x/a/gv/e;

    iget-object v0, v0, Lc/m/x/a/gv/e;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/q;->a:Lc/m/x/a/gv/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/m/x/a/gv/e;->mAnimatingAway:Landroid/view/View;

    iget-object v0, p0, Lc/m/x/a/gv/q;->b:Lc/m/x/a/gv/o;

    iget-object v1, p0, Lc/m/x/a/gv/q;->a:Lc/m/x/a/gv/e;

    iget-object v2, p0, Lc/m/x/a/gv/q;->a:Lc/m/x/a/gv/e;

    iget v2, v2, Lc/m/x/a/gv/e;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/o;->a(Lc/m/x/a/gv/e;IIIZ)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
