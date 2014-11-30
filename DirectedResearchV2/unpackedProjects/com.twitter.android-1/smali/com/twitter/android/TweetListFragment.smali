.class public abstract Lcom/twitter/android/TweetListFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/twitter/android/dd;
.implements Lcom/twitter/android/widget/c;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Landroid/view/View$OnClickListener;

.field private c:I

.field private d:I

.field private e:Landroid/view/GestureDetector;

.field private f:Landroid/view/animation/Animation;

.field protected g:Lcom/twitter/android/provider/ax;

.field h:Lcom/twitter/android/ed;

.field private r:Landroid/view/animation/Animation;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->a:Ljava/util/HashMap;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->p:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2, p1, p2}, Lcom/twitter/android/client/e;->a(J)Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-static {v0}, Lcom/twitter/android/util/q;->b(Ljava/util/Collection;)[J

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;[J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0b00b3

    const v5, 0x7f0b0010

    const v4, 0x1080027

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/twitter/android/bs;

    invoke-direct {v1, p0}, Lcom/twitter/android/bs;-><init>(Lcom/twitter/android/TweetListFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0042

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0041

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/twitter/android/br;

    invoke-direct {v1, p0}, Lcom/twitter/android/br;-><init>(Lcom/twitter/android/TweetListFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b018a

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b018b

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/provider/ax;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->n:Z

    iget v0, p0, Lcom/twitter/android/TweetListFragment;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v4, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/twitter/android/TweetListFragment;->o:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetListFragment;->c(J)V

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(J)V

    return-void
.end method

.method final a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    iget-object v1, v0, Lcom/twitter/android/ed;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v0, Lcom/twitter/android/ed;->d:Landroid/view/View;

    iget-object v0, v0, Lcom/twitter/android/ed;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    invoke-direct {p0, p1}, Lcom/twitter/android/TweetListFragment;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/twitter/android/provider/ax;

    iget-boolean v0, p2, Lcom/twitter/android/provider/ax;->G:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/TweetListFragment;->o:J

    iget-wide v2, p2, Lcom/twitter/android/provider/ax;->F:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/TweetListFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    iget-object v2, v2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->a:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/twitter/android/TweetListFragment;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    return-void
.end method

.method final a(Lcom/twitter/android/da;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    iget-object v1, v1, Lcom/twitter/android/ed;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    iget-object v0, v0, Lcom/twitter/android/ed;->c:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v0, p1, Lcom/twitter/android/da;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/twitter/android/da;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/twitter/android/da;->b:Landroid/view/ViewGroup;

    :cond_3
    new-instance v0, Lcom/twitter/android/ed;

    iget-object v2, p1, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p1, Lcom/twitter/android/da;->b:Landroid/view/ViewGroup;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/ed;-><init>(Lcom/twitter/android/TweetListFragment;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/animation/Animation;Landroid/view/animation/Animation;I)V

    iget v1, v0, Lcom/twitter/android/ed;->a:I

    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetListFragment;->b(I)Lcom/twitter/android/provider/ax;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/android/ed;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetListFragment;->b:Landroid/view/View$OnClickListener;

    invoke-static {v3, v1, v2, v4}, Lcom/twitter/android/widget/d;->a(Lcom/twitter/android/client/Session;Lcom/twitter/android/provider/ax;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/twitter/android/ed;->a()V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    invoke-direct {p0, p5}, Lcom/twitter/android/TweetListFragment;->b(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract b(I)Lcom/twitter/android/provider/ax;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "state_delete_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "en_gest"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->s:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/da;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/da;

    iget-object v2, p0, Lcom/twitter/android/TweetListFragment;->f:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/TweetListFragment;->r:Landroid/view/animation/Animation;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/android/da;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    if-eqz v0, :cond_0

    const-string v0, "state_delete_key"

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    iget-wide v0, p0, Lcom/twitter/android/TweetListFragment;->o:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetListFragment;->c(J)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iput v1, p0, Lcom/twitter/android/TweetListFragment;->c:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/TweetListFragment;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/TweetListFragment;->d:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-wide/16 v9, 0xfa

    const/4 v8, 0x1

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->s:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/twitter/android/TweetListFragment;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/android/bw;

    invoke-direct {v0, p0}, Lcom/twitter/android/bw;-><init>(Lcom/twitter/android/TweetListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v2, v5, 0x2

    iput v5, p0, Lcom/twitter/android/TweetListFragment;->d:I

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v7, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iput-object v6, p0, Lcom/twitter/android/TweetListFragment;->f:Landroid/view/animation/Animation;

    iput-object v7, p0, Lcom/twitter/android/TweetListFragment;->r:Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/GestureDetector;

    new-instance v0, Lcom/twitter/android/bu;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/bu;-><init>(Lcom/twitter/android/TweetListFragment;IILandroid/widget/ListView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-direct {v8, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/twitter/android/TweetListFragment;->e:Landroid/view/GestureDetector;

    goto :goto_0
.end method
