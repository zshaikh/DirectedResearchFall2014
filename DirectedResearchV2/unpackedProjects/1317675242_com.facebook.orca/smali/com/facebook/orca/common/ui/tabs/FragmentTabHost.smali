.class public Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;
.super Landroid/widget/FrameLayout;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# instance fields
.field protected a:I

.field private b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

.field private c:Landroid/widget/FrameLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;

.field private g:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setFocusableInTouchMode(Z)V

    .line 52
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setDescendantFocusability(I)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    .line 56
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;->a(Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Ljava/lang/String;Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-static {p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab indicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    invoke-static {p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;->a()Landroid/view/View;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->g:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    invoke-static {p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setStripEnabled(Z)V

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->addView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 178
    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTab(I)V

    .line 180
    :cond_3
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    iget v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 244
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    iget v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->playSoundEffect(I)V

    .line 253
    const/4 v0, 0x1

    .line 255
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    iget v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 150
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 267
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    if-eq p1, v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 276
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->b()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 280
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    if-eq v0, v5, :cond_2

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->a()I

    move-result v0

    .line 282
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->o()Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 287
    :cond_2
    iput p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    .line 288
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    .line 292
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    iget v4, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a:I

    invoke-virtual {v1, v4}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b(I)V

    .line 295
    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 297
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 298
    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->a(Z)V

    .line 300
    :cond_3
    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 301
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 302
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->o()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 322
    :cond_5
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d()V

    goto/16 :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTab(I)V

    .line 229
    :cond_0
    return-void

    .line 223
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->f:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$OnTabChangeListener;

    .line 333
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->g:Landroid/view/View$OnKeyListener;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->b:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;

    new-instance v1, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$2;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;)V

    .line 113
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c:Landroid/widget/FrameLayout;

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->c:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    return-void
.end method
