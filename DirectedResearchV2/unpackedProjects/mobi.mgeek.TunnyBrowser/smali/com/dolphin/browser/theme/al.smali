.class public Lcom/dolphin/browser/theme/al;
.super Ljava/lang/Object;
.source "ThemeConfigurationImpl.java"

# interfaces
.implements Lcom/dolphin/browser/theme/h;


# instance fields
.field private a:Lcom/dolphin/browser/theme/d/b;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/dolphin/browser/theme/al;->e:I

    .line 49
    iput v0, p0, Lcom/dolphin/browser/theme/al;->f:I

    .line 50
    iput v0, p0, Lcom/dolphin/browser/theme/al;->g:I

    .line 51
    iput v0, p0, Lcom/dolphin/browser/theme/al;->h:I

    .line 52
    iput v0, p0, Lcom/dolphin/browser/theme/al;->i:I

    .line 53
    iput v0, p0, Lcom/dolphin/browser/theme/al;->j:I

    .line 56
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0628

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/theme/al;->e:I

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/theme/al;->c:Landroid/graphics/Point;

    .line 61
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/theme/al;->d:Landroid/graphics/Point;

    .line 62
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/theme/al;->b:Landroid/graphics/Point;

    .line 64
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 65
    iget-object v2, p0, Lcom/dolphin/browser/theme/al;->b:Landroid/graphics/Point;

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b011e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 66
    iget-object v2, p0, Lcom/dolphin/browser/theme/al;->b:Landroid/graphics/Point;

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b011d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 68
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/dolphin/browser/theme/al;->b:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, p0, Lcom/dolphin/browser/theme/al;->d:Landroid/graphics/Point;

    .line 70
    iget-object v2, p0, Lcom/dolphin/browser/theme/al;->c:Landroid/graphics/Point;

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b016d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 72
    iget-object v2, p0, Lcom/dolphin/browser/theme/al;->c:Landroid/graphics/Point;

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b016c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v1, v3, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 75
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/theme/al;->g:I

    .line 76
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/theme/al;->f:I

    .line 77
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/theme/al;->h:I

    .line 78
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/theme/al;->i:I

    .line 79
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/theme/al;->j:I

    .line 80
    return-void
.end method


# virtual methods
.method public A()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/io/File;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public F()Lcom/dolphin/browser/theme/b/h;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public a()Lcom/dolphin/browser/theme/c/f;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/dolphin/browser/theme/b;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/b;-><init>()V

    return-object v0
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 225
    const-string v2, "com.dolphin.theme.hatsunemiku"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    const-string v2, "mobi.mgeek.TunnyBrowser.Theme.EnNightModeV10"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 231
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/dolphin/browser/theme/al;->f:I

    return v0
.end method

.method public c()Lcom/dolphin/browser/theme/d/b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->a:Lcom/dolphin/browser/theme/d/b;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/dolphin/browser/theme/j;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/j;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/al;->a:Lcom/dolphin/browser/theme/d/b;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->a:Lcom/dolphin/browser/theme/d/b;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/dolphin/browser/theme/al;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/theme/al;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public m()[I
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/dolphin/browser/theme/b;->a:[I

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202f3

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020329

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/dolphin/browser/theme/al;->g:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202f0

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/dolphin/browser/theme/al;->g:I

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/dolphin/browser/theme/al;->h:I

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/dolphin/browser/theme/al;->i:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "http://opsen.dolphin-browser.com/api/1/skin/promote.json"

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isHtc()Z

    move-result v0

    return v0
.end method
