.class public Lcom/dolphin/browser/d/c;
.super Landroid/widget/FrameLayout;
.source "ControlPanelView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/dolphin/browser/d/b;

.field private d:Z

.field private e:Lcom/dolphin/browser/d/d;


# direct methods
.method private a(II)Z
    .locals 1

    .prologue
    const/4 v0, -0x5

    .line 267
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 140
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/d/c;->b:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/d/c;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, p0, Lcom/dolphin/browser/d/c;->b:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/a/a;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/dolphin/browser/d/c;->b:Landroid/widget/ListView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0035

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 152
    sget-object v2, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 154
    iget-object v1, p0, Lcom/dolphin/browser/d/c;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/d/c;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a003a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/d/c;->c:Lcom/dolphin/browser/d/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/d/b;->a()V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/d/c;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020025

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/d/c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02023b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/dolphin/browser/d/c;->d()V

    .line 192
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/dolphin/browser/d/c;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/dolphin/browser/d/c;->d:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/d/c;->d:Z

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 240
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/d/c;->e:Lcom/dolphin/browser/d/d;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/d/c;->e:Lcom/dolphin/browser/d/d;

    invoke-interface {v0}, Lcom/dolphin/browser/d/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->c()V

    .line 294
    :goto_0
    return v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->c()V

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->c()V

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 277
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/d/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/dolphin/browser/d/c;->c()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 197
    instance-of v0, p1, Lcom/dolphin/browser/ui/a/a;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lcom/dolphin/browser/ui/a/a;

    .line 199
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/d/c;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/d/c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
