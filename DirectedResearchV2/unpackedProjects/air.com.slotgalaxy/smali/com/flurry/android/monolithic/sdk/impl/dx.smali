.class public final Lcom/flurry/android/monolithic/sdk/impl/dx;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/dx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/dx;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;)V

    .line 43
    const-string v0, "com.flurry.millennial.MYAPID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dx;->f:Ljava/lang/String;

    .line 44
    const-string v0, "com.flurry.millennial.MYAPIDRECTANGLE"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dx;->g:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/dx;->setFocusable(Z)V

    .line 46
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dx;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout()V
    .locals 14

    .prologue
    const/16 v12, 0x12c

    const/16 v11, 0xfa

    const/16 v10, 0x32

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dx;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    .line 53
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dx;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v2

    .line 55
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/dx;->a:Ljava/lang/String;

    const-string v4, "Ad space width: %d Ad space height: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 v3, 0x140

    if-lt v1, v3, :cond_0

    if-ge v2, v10, :cond_1

    :cond_0
    if-lt v1, v12, :cond_4

    if-lt v2, v11, :cond_4

    .line 60
    :cond_1
    new-instance v3, Lcom/millennialmedia/android/MMAdView;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/dx;->setId(I)V

    .line 63
    const/16 v0, 0x140

    .line 66
    const/16 v4, 0x140

    if-lt v1, v4, :cond_3

    if-lt v2, v10, :cond_3

    .line 68
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/dx;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 70
    const/16 v4, 0x2d8

    if-lt v1, v4, :cond_2

    const/16 v4, 0x5a

    if-lt v2, v4, :cond_2

    .line 72
    const/16 v0, 0x2d8

    .line 73
    const/16 v1, 0x5a

    move v13, v1

    move v1, v0

    move v0, v13

    .line 89
    :goto_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/dx;->a:Ljava/lang/String;

    const-string v4, "Determined Millennial AdSize as %d x %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 92
    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 94
    invoke-virtual {p0, v8}, Lcom/flurry/android/monolithic/sdk/impl/dx;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    invoke-virtual {p0, v8}, Lcom/flurry/android/monolithic/sdk/impl/dx;->setVerticalScrollBarEnabled(Z)V

    .line 96
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/dx;->setGravity(I)V

    .line 129
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/dy;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/dy;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dx;)V

    .line 130
    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/dx;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 139
    :goto_1
    return-void

    .line 75
    :cond_2
    const/16 v4, 0x1e0

    if-lt v1, v4, :cond_5

    const/16 v1, 0x3c

    if-lt v2, v1, :cond_5

    .line 77
    const/16 v0, 0x1e0

    .line 78
    const/16 v1, 0x3c

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_0

    .line 81
    :cond_3
    if-lt v1, v12, :cond_5

    if-lt v2, v11, :cond_5

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dx;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    move v0, v11

    move v1, v12

    .line 86
    goto :goto_0

    .line 137
    :cond_4
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dx;->a:Ljava/lang/String;

    const-string v1, "**********Could not load Millennial Ad"

    invoke-static {v9, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v0

    move v0, v10

    goto :goto_0
.end method
