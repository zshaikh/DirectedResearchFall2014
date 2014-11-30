.class public Lcom/dolphin/browser/menu/w;
.super Ljava/util/Observable;
.source "MenuDisplayManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/menu/w;


# instance fields
.field private b:Landroid/content/res/Resources;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/menu/w;->b:Landroid/content/res/Resources;

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/menu/w;->c:I

    .line 40
    iput v2, p0, Lcom/dolphin/browser/menu/w;->d:I

    .line 41
    iput v2, p0, Lcom/dolphin/browser/menu/w;->e:I

    .line 42
    iput v1, p0, Lcom/dolphin/browser/menu/w;->f:I

    .line 43
    iput v1, p0, Lcom/dolphin/browser/menu/w;->g:I

    .line 44
    iput v1, p0, Lcom/dolphin/browser/menu/w;->h:I

    .line 34
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/w;->b:Landroid/content/res/Resources;

    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/menu/w;->j()V

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/menu/w;->b:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->a(I)V

    .line 37
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/menu/w;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/menu/w;->a:Lcom/dolphin/browser/menu/w;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/dolphin/browser/menu/w;

    invoke-direct {v0}, Lcom/dolphin/browser/menu/w;-><init>()V

    sput-object v0, Lcom/dolphin/browser/menu/w;->a:Lcom/dolphin/browser/menu/w;

    .line 29
    :cond_0
    sget-object v0, Lcom/dolphin/browser/menu/w;->a:Lcom/dolphin/browser/menu/w;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    .prologue
    const v3, 0x7f0b014e

    const v2, 0x3f4ccccd

    .line 72
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->c:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v0, :cond_1

    .line 75
    iget v0, p0, Lcom/dolphin/browser/menu/w;->d:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    const v1, 0x3f0ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/menu/w;->f:I

    .line 76
    iget v0, p0, Lcom/dolphin/browser/menu/w;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/menu/w;->g:I

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    invoke-direct {p0, v3}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->e(I)V

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    invoke-direct {p0, v3}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40133333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->f(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v0, :cond_2

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00d1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->e(I)V

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00d0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->f(I)V

    .line 82
    iget v0, p0, Lcom/dolphin/browser/menu/w;->d:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dolphin/browser/menu/w;->f:I

    .line 83
    const v0, 0x3f333333

    iget v1, p0, Lcom/dolphin/browser/menu/w;->f:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/menu/w;->g:I

    goto :goto_0

    .line 84
    :cond_2
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v0, :cond_0

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00d2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->e(I)V

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00ae

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->f(I)V

    .line 87
    iget v0, p0, Lcom/dolphin/browser/menu/w;->d:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dolphin/browser/menu/w;->f:I

    .line 88
    iget v0, p0, Lcom/dolphin/browser/menu/w;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/menu/w;->g:I

    goto :goto_0
.end method

.method private g(I)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/menu/w;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00be

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->b(I)V

    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00b6

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->c(I)V

    .line 96
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00b7

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/w;->d(I)V

    .line 97
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/dolphin/browser/menu/w;->c:I

    if-eq v0, p1, :cond_0

    .line 55
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/menu/w;->d:I

    .line 58
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/menu/w;->e:I

    .line 63
    :goto_0
    iget v0, p0, Lcom/dolphin/browser/menu/w;->d:I

    iget v1, p0, Lcom/dolphin/browser/menu/w;->e:I

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/menu/w;->a(II)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/w;->setChanged()V

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/w;->notifyObservers()V

    .line 68
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/menu/w;->d:I

    .line 61
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/menu/w;->e:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/dolphin/browser/menu/w;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/dolphin/browser/menu/w;->k:I

    .line 152
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/dolphin/browser/menu/w;->g:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/dolphin/browser/menu/w;->l:I

    .line 162
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00e1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/w;->g(I)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/dolphin/browser/menu/w;->m:I

    .line 172
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/dolphin/browser/menu/w;->k:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcom/dolphin/browser/menu/w;->i:I

    .line 182
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/dolphin/browser/menu/w;->l:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lcom/dolphin/browser/menu/w;->j:I

    .line 192
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/dolphin/browser/menu/w;->m:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/dolphin/browser/menu/w;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/dolphin/browser/menu/w;->j:I

    return v0
.end method
