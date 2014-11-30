.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ListFragment.java"


# instance fields
.field private final Q:Landroid/os/Handler;

.field private final R:Ljava/lang/Runnable;

.field private final S:Landroid/widget/AdapterView$OnItemClickListener;

.field a:Landroid/widget/ListAdapter;

.field b:Landroid/widget/ListView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->Q:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->R:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->S:Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    return-void
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->g()V

    .line 246
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->g:Z

    if-ne v0, p1, :cond_1

    .line 272
    :goto_0
    return-void

    .line 252
    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->g:Z

    .line 253
    if-eqz p1, :cond_3

    .line 254
    if-eqz p2, :cond_2

    .line 255
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_3
    if-eqz p2, :cond_4

    .line 264
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->o()Landroid/view/View;

    move-result-object v0

    .line 286
    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 290
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    .line 314
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->g:Z

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->S:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 325
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->Q:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    :cond_4
    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->d:Landroid/widget/TextView;

    if-nez v1, :cond_5

    .line 294
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->c:Landroid/view/View;

    .line 296
    :cond_5
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    .line 297
    iput-object v3, p0, Landroid/support/v4/app/ListFragment;->f:Landroid/view/View;

    .line 298
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_7

    .line 300
    if-nez v0, :cond_6

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_7
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 321
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 322
    invoke-direct {p0, v2, v2}, Landroid/support/v4/app/ListFragment;->a(ZZ)V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 86
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    const v2, 0xff0001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 90
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 95
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setId(I)V

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 97
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->g()V

    .line 114
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    move v0, v2

    .line 145
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->a:Landroid/widget/ListAdapter;

    .line 146
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-boolean v1, p0, Landroid/support/v4/app/ListFragment;->g:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-direct {p0, v2, v0}, Landroid/support/v4/app/ListFragment;->a(ZZ)V

    .line 154
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 144
    goto :goto_0

    :cond_2
    move v0, v3

    .line 151
    goto :goto_1
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public l_()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->Q:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->b:Landroid/widget/ListView;

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->l_()V

    .line 124
    return-void
.end method
