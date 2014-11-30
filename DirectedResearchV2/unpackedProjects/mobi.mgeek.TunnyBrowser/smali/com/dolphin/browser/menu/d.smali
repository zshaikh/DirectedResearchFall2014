.class Lcom/dolphin/browser/menu/d;
.super Ljava/lang/Object;
.source "AbsMenuBarPanel.java"

# interfaces
.implements Lcom/dolphin/browser/menu/g;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/a;

.field private b:Lcom/g/a/a;

.field private c:Lcom/g/a/a;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/g/a/b;

.field private g:Lcom/g/a/b;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/menu/a;)V
    .locals 1

    .prologue
    .line 364
    iput-object p1, p0, Lcom/dolphin/browser/menu/d;->a:Lcom/dolphin/browser/menu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Lcom/dolphin/browser/menu/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/e;-><init>(Lcom/dolphin/browser/menu/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/d;->f:Lcom/g/a/b;

    .line 340
    new-instance v0, Lcom/dolphin/browser/menu/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/f;-><init>(Lcom/dolphin/browser/menu/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/d;->g:Lcom/g/a/b;

    .line 366
    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 373
    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->e:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->e:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v2

    .line 377
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->e:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    .line 380
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 384
    :goto_0
    iget-object v3, p0, Lcom/dolphin/browser/menu/d;->d:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 385
    iget-object v1, p0, Lcom/dolphin/browser/menu/d;->a:Lcom/dolphin/browser/menu/a;

    iget-object v3, p0, Lcom/dolphin/browser/menu/d;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/menu/a;->a(Landroid/view/View;)Lcom/g/a/a;

    move-result-object v3

    .line 386
    iget-object v1, p0, Lcom/dolphin/browser/menu/d;->a:Lcom/dolphin/browser/menu/a;

    iget-object v4, p0, Lcom/dolphin/browser/menu/d;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/menu/a;->b(Landroid/view/View;)Lcom/g/a/a;

    move-result-object v1

    .line 388
    :goto_1
    iget-object v4, p0, Lcom/dolphin/browser/menu/d;->d:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/dolphin/browser/menu/d;->e:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 389
    new-instance v5, Lcom/g/a/d;

    invoke-direct {v5}, Lcom/g/a/d;-><init>()V

    .line 390
    new-instance v4, Lcom/g/a/d;

    invoke-direct {v4}, Lcom/g/a/d;-><init>()V

    .line 391
    new-array v6, v7, [Lcom/g/a/a;

    aput-object v2, v6, v8

    aput-object v3, v6, v9

    invoke-virtual {v5, v6}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    .line 392
    new-array v2, v7, [Lcom/g/a/a;

    aput-object v0, v2, v8

    aput-object v1, v2, v9

    invoke-virtual {v4, v2}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    move-object v0, v4

    move-object v2, v5

    .line 404
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/dolphin/browser/menu/d;->a:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/a;->l()I

    move-result v1

    .line 405
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    const-wide/16 v3, 0xfa

    :goto_3
    invoke-virtual {v2, v3, v4}, Lcom/g/a/a;->a(J)Lcom/g/a/a;

    .line 406
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Lcom/g/a/a;->a(J)Lcom/g/a/a;

    .line 407
    iget-object v1, p0, Lcom/dolphin/browser/menu/d;->f:Lcom/g/a/b;

    invoke-virtual {v2, v1}, Lcom/g/a/a;->a(Lcom/g/a/b;)V

    .line 408
    iget-object v1, p0, Lcom/dolphin/browser/menu/d;->g:Lcom/g/a/b;

    invoke-virtual {v0, v1}, Lcom/g/a/a;->a(Lcom/g/a/b;)V

    .line 410
    iput-object v2, p0, Lcom/dolphin/browser/menu/d;->b:Lcom/g/a/a;

    .line 411
    iput-object v0, p0, Lcom/dolphin/browser/menu/d;->c:Lcom/g/a/a;

    .line 412
    :cond_1
    return-void

    .line 395
    :cond_2
    iget-object v4, p0, Lcom/dolphin/browser/menu/d;->e:Landroid/view/View;

    if-nez v4, :cond_0

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    move-object v0, v1

    move-object v2, v3

    .line 400
    goto :goto_2

    .line 405
    :cond_3
    int-to-long v3, v1

    goto :goto_3

    :cond_4
    move-object v3, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    move-object v2, v1

    goto :goto_0

    .line 376
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 379
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/dolphin/browser/menu/d;->a()V

    .line 419
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->b:Lcom/g/a/a;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->b:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->a()V

    .line 422
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->c:Lcom/g/a/a;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/dolphin/browser/menu/d;->c:Lcom/g/a/a;

    invoke-virtual {v0}, Lcom/g/a/a;->a()V

    .line 430
    :cond_0
    return-void
.end method
