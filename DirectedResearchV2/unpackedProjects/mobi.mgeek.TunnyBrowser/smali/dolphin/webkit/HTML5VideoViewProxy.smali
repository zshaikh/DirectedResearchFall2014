.class Ldolphin/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Lcom/dolphin/player/at;
.implements Ldolphin/webkit/eg;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:Ldolphin/util/j;

.field private b:Ldolphin/webkit/WebViewClassic;

.field private c:[B

.field private d:Ldolphin/webkit/dt;

.field private e:I

.field mNativePointer:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 920
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m.youtube.com/watch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "m.youtube.com/#/watch"

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/HTML5VideoViewProxy;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ldolphin/webkit/WebViewClassic;I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 803
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 805
    iput-object p1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    .line 809
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 811
    iput p2, p0, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 813
    invoke-direct {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->o()V

    .line 814
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/HTML5VideoViewProxy;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->e:I

    return p1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 480
    invoke-static {}, Ldolphin/webkit/dv;->b()V

    .line 481
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/HTML5VideoViewProxy;II)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/HTML5VideoViewProxy;[B)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->a([B)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/HTML5VideoViewProxy;[BI)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched([BI)V

    return-void
.end method

.method private a([B)V
    .locals 2

    .prologue
    .line 865
    if-nez p1, :cond_0

    .line 873
    :goto_0
    return-void

    .line 869
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->c:[B

    .line 870
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 871
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 872
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(IIIII)Z
    .locals 1

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(IIIII)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 951
    const-string v0, "source=youtube"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic c(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic d(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnPlay(I)V

    return-void
.end method

.method static synthetic e(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(I)V

    return-void
.end method

.method static synthetic f(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic g(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnDownload(I)V

    return-void
.end method

.method public static getInstance(Ldolphin/webkit/WebViewCore;I)Ldolphin/webkit/HTML5VideoViewProxy;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1142
    new-instance v0, Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewCore;->getWebViewClassic()Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ldolphin/webkit/HTML5VideoViewProxy;-><init>(Ldolphin/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method static synthetic h(Ldolphin/webkit/HTML5VideoViewProxy;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeOnRequestPlay(I)V

    return-void
.end method

.method private native nativeOnDownload(I)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPlay(I)V
.end method

.method private native nativeOnPosterFetched([BI)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRequestPlay(I)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(IIIII)Z
.end method

.method private o()V
    .locals 1

    .prologue
    .line 817
    new-instance v0, Ldolphin/webkit/ds;

    invoke-direct {v0, p0}, Ldolphin/webkit/ds;-><init>(Ldolphin/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    .line 862
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 877
    invoke-static {}, Ldolphin/webkit/dv;->c()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 878
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 879
    return-void
.end method

.method private r()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 911
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.youtube"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 916
    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 913
    :catch_0
    move-exception v1

    .line 914
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 929
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v2

    .line 934
    :cond_1
    const-string v3, "http"

    const/4 v5, 0x4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 936
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 937
    add-int/lit8 v5, v3, 0x3

    move v9, v2

    .line 938
    :goto_1
    sget-object v3, Ldolphin/webkit/HTML5VideoViewProxy;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v9, v3, :cond_0

    .line 939
    sget-object v3, Ldolphin/webkit/HTML5VideoViewProxy;->f:[Ljava/lang/String;

    aget-object v6, v3, v9

    .line 940
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v0

    move v4, v1

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    .line 941
    goto :goto_0

    .line 938
    :cond_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_1
.end method

.method private t()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 955
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 956
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-object v0

    .line 960
    :cond_1
    const-string v2, "(?<=watch\\?v=|/videos/|embed\\/)[^#\\&\\?]*"

    .line 961
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 962
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 963
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 965
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 966
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 1100
    invoke-static {p1}, Ldolphin/webkit/dv;->a(I)V

    .line 1101
    return-void
.end method

.method public a(III)V
    .locals 4

    .prologue
    .line 519
    invoke-static {}, Ldolphin/webkit/dv;->d()V

    .line 520
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 522
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1112
    if-nez p3, :cond_2

    .line 1113
    invoke-virtual {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getEnableVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v3, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    move v0, p1

    move-object v1, p2

    move-object v2, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->c(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v3, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    move v0, p1

    move-object v1, p2

    move-object v2, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->a(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_0

    .line 1120
    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1121
    iget-object v3, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    move v0, p1

    move-object v1, p2

    move-object v2, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->b(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 579
    return-void
.end method

.method public a(Lcom/dolphin/player/j;)V
    .locals 5

    .prologue
    .line 485
    invoke-static {}, Ldolphin/webkit/dv;->d()V

    .line 486
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 488
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/dolphin/player/j;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/dolphin/player/j;->l()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/dolphin/player/j;->m()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 493
    return-void
.end method

.method public a(Lcom/dolphin/player/j;I)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public a(Lcom/dolphin/player/j;II)V
    .locals 0

    .prologue
    .line 1184
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1108
    invoke-static {p1}, Ldolphin/webkit/dv;->a(Z)V

    .line 1109
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 532
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 564
    packed-switch p1, :pswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 566
    :pswitch_0
    invoke-virtual {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->c()V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/dolphin/player/j;)V
    .locals 3

    .prologue
    .line 501
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 502
    return-void
.end method

.method public b(Lcom/dolphin/player/j;II)Z
    .locals 1

    .prologue
    .line 506
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 536
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 537
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 1131
    invoke-static {p1}, Ldolphin/webkit/dv;->b(I)V

    .line 1132
    return-void
.end method

.method public c(Lcom/dolphin/player/j;II)Z
    .locals 1

    .prologue
    .line 1175
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 1176
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1177
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 1178
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 541
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 542
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 546
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 547
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 551
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 552
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 556
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 557
    return-void
.end method

.method public getVideoHeight(Z)I
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1087
    if-eqz p1, :cond_1

    .line 1088
    invoke-static {}, Ldolphin/webkit/dv;->f()Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {}, Ldolphin/webkit/dv;->g()Ldolphin/webkit/dr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-static {}, Ldolphin/webkit/dv;->g()Ldolphin/webkit/dr;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/dr;->l()I

    move-result v0

    .line 1095
    :goto_0
    return v0

    .line 1092
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/player/a;->c(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 1095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoWidth(Z)I
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1073
    if-eqz p1, :cond_1

    .line 1074
    invoke-static {}, Ldolphin/webkit/dv;->f()Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {}, Ldolphin/webkit/dv;->g()Ldolphin/webkit/dr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-static {}, Ldolphin/webkit/dv;->g()Ldolphin/webkit/dr;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/dr;->k()I

    move-result v0

    .line 1081
    :goto_0
    return v0

    .line 1078
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/player/a;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 1081
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 587
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 588
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v3

    .line 589
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 590
    if-eqz v3, :cond_0

    .line 591
    iget v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->e:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->a(Ljava/lang/String;ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebChromeClient;II)V

    goto :goto_0

    .line 596
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 597
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->e:I

    .line 598
    iget v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->e:I

    invoke-static {v0, p0}, Ldolphin/webkit/dv;->a(ILdolphin/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 602
    :sswitch_2
    invoke-static {p0}, Ldolphin/webkit/dv;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 606
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 607
    invoke-static {v1}, Ldolphin/webkit/dv;->b(Z)Z

    .line 608
    :cond_1
    invoke-static {}, Ldolphin/webkit/dv;->e()V

    goto :goto_0

    .line 611
    :sswitch_4
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 618
    :sswitch_5
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_2

    .line 622
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 623
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 624
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->a([B)V

    goto :goto_0

    .line 626
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->a([B)V

    goto :goto_0

    .line 632
    :sswitch_6
    invoke-static {p0}, Ldolphin/webkit/dv;->a(Ldolphin/webkit/HTML5VideoViewProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-direct {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->q()V

    goto :goto_0

    .line 638
    :sswitch_7
    invoke-static {v1}, Ldolphin/webkit/dv;->c(Z)V

    goto :goto_0

    .line 642
    :sswitch_8
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/dv;->c(Z)V

    goto :goto_0

    .line 585
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0xc9 -> :sswitch_3
        0x12c -> :sswitch_6
    .end sparse-switch
.end method

.method public i()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 887
    iget-object v1, p0, Ldolphin/webkit/HTML5VideoViewProxy;->a:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 888
    return-void
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 891
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 892
    invoke-virtual {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 894
    :cond_0
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v0

    .line 895
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 1104
    invoke-static {}, Ldolphin/webkit/dv;->a()V

    .line 1105
    return-void
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1057
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1058
    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->d:Ldolphin/webkit/dt;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->d:Ldolphin/webkit/dt;

    invoke-virtual {v0}, Ldolphin/webkit/dt;->c()V

    .line 1066
    :cond_1
    new-instance v0, Ldolphin/webkit/dt;

    invoke-direct {v0, p1, p0}, Ldolphin/webkit/dt;-><init>(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->d:Ldolphin/webkit/dt;

    .line 1067
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->d:Ldolphin/webkit/dt;

    invoke-virtual {v0}, Ldolphin/webkit/dt;->b()V

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {p0, v0}, Ldolphin/webkit/dv;->a(Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;)V

    .line 1128
    return-void
.end method

.method n()Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method public native nativeIsLiveCameraStream(Ljava/lang/String;)Z
.end method

.method public native nativeNotifyLocalMediaStreamEnded(Ljava/lang/String;)V
.end method

.method public p()V
    .locals 1

    .prologue
    .line 560
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1033
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1034
    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1035
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    :try_start_0
    invoke-direct {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->t()Ljava/lang/String;

    move-result-object v0

    .line 990
    if-eqz v0, :cond_1

    .line 991
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 992
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 995
    invoke-virtual {p0}, Ldolphin/webkit/HTML5VideoViewProxy;->b()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    move-exception v0

    .line 1006
    :cond_1
    if-ltz p2, :cond_2

    .line 1007
    iput p2, p0, Ldolphin/webkit/HTML5VideoViewProxy;->e:I

    .line 1010
    :cond_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1011
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 1012
    invoke-virtual {p0, p1}, Ldolphin/webkit/HTML5VideoViewProxy;->nativeIsLiveCameraStream(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1013
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1014
    invoke-virtual {p0, v1}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1012
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public seek(I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1023
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1024
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1025
    invoke-virtual {p0, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1026
    return-void
.end method

.method public setAsActiveVideo()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1154
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 1155
    return-void
.end method

.method public teardown()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->d:Ldolphin/webkit/dt;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->d:Ldolphin/webkit/dt;

    invoke-virtual {v0}, Ldolphin/webkit/dt;->c()V

    .line 1047
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 1048
    return-void
.end method
