.class public Lcom/mgeek/android/ui/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# instance fields
.field protected a:I

.field protected b:Landroid/app/LocalActivityManager;

.field private c:Lcom/mgeek/android/ui/TabWidget;

.field private d:Landroid/widget/FrameLayout;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mgeek/android/ui/az;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Lcom/mgeek/android/ui/ay;

.field private h:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    .line 39
    iput-object v2, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    .line 44
    iput-object v2, p0, Lcom/mgeek/android/ui/TabHost;->b:Landroid/app/LocalActivityManager;

    .line 50
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabHost;->f()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    .line 39
    iput-object v2, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    .line 44
    iput-object v2, p0, Lcom/mgeek/android/ui/TabHost;->b:Landroid/app/LocalActivityManager;

    .line 55
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabHost;->f()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/TabHost;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabHost;->setFocusableInTouchMode(Z)V

    .line 60
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabHost;->setDescendantFocusability(I)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    .line 64
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->g:Lcom/mgeek/android/ui/ay;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->g:Lcom/mgeek/android/ui/ay;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabHost;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgeek/android/ui/ay;->a(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mgeek/android/ui/az;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/mgeek/android/ui/az;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mgeek/android/ui/az;-><init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;Lcom/mgeek/android/ui/at;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 86
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/TabWidget;

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    .line 87
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/mgeek/android/ui/at;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/at;-><init>(Lcom/mgeek/android/ui/TabHost;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->h:Landroid/view/View$OnKeyListener;

    .line 112
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    new-instance v1, Lcom/mgeek/android/ui/au;

    invoke-direct {v1, p0}, Lcom/mgeek/android/ui/au;-><init>(Lcom/mgeek/android/ui/TabHost;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->a(Lcom/mgeek/android/ui/bc;)V

    .line 121
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->d:Landroid/widget/FrameLayout;

    .line 122
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 281
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    if-eq p1, v0, :cond_0

    .line 290
    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    if-eq v0, v3, :cond_2

    .line 291
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    iget v1, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/az;

    invoke-static {v0}, Lcom/mgeek/android/ui/az;->b(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgeek/android/ui/av;->b()V

    .line 294
    :cond_2
    iput p1, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    .line 295
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/az;

    .line 299
    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    iget v2, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    invoke-virtual {v1, v2}, Lcom/mgeek/android/ui/TabWidget;->c(I)V

    .line 302
    invoke-static {v0}, Lcom/mgeek/android/ui/az;->b(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgeek/android/ui/av;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabWidget;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 320
    :cond_4
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabHost;->g()V

    goto :goto_0
.end method

.method public a(Landroid/app/LocalActivityManager;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabHost;->a()V

    .line 139
    iput-object p1, p0, Lcom/mgeek/android/ui/TabHost;->b:Landroid/app/LocalActivityManager;

    .line 140
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/ay;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/mgeek/android/ui/TabHost;->g:Lcom/mgeek/android/ui/ay;

    .line 331
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/az;)V
    .locals 2

    .prologue
    .line 180
    invoke-static {p1}, Lcom/mgeek/android/ui/az;->a(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/aw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab indicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    invoke-static {p1}, Lcom/mgeek/android/ui/az;->b(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/av;

    move-result-object v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    invoke-static {p1}, Lcom/mgeek/android/ui/az;->a(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/aw;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgeek/android/ui/aw;->a()Landroid/view/View;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->h:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 190
    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    invoke-virtual {v1, v0}, Lcom/mgeek/android/ui/TabWidget;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabHost;->a(I)V

    .line 196
    :cond_2
    return-void
.end method

.method public b()Lcom/mgeek/android/ui/TabWidget;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/az;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/TabHost;->a(I)V

    .line 245
    :cond_0
    return-void

    .line 239
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    iget v1, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/az;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/az;->a()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 260
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    iget v1, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 268
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TabHost;->playSoundEffect(I)V

    .line 269
    const/4 v0, 0x1

    .line 271
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 278
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    iget-object v1, p0, Lcom/mgeek/android/ui/TabHost;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    iget v1, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 146
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 155
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 165
    if-nez p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/TabHost;->c:Lcom/mgeek/android/ui/TabWidget;

    iget v1, p0, Lcom/mgeek/android/ui/TabHost;->a:I

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 172
    :cond_1
    return-void
.end method
