.class public Lcom/dolphin/browser/webkit/management/EngineStrategyManager;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static e:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;


# instance fields
.field private f:Landroid/content/Context;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/CheckBox;

.field private j:I

.field private k:[Lcom/dolphin/browser/webkit/management/f;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0e020c

    const v4, 0x7f0e020a

    const v3, 0x7f0e021d

    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v3, v0, v1

    sput-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a:[I

    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e021c

    aput v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0216

    aput v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0213

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0214

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0217

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0212

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e021b

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0215

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b:[I

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e020e

    aput v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v4, v0, v1

    sput-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->c:[I

    .line 128
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e020d

    aput v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    aput v5, v0, v1

    sput-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->d:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->n:I

    .line 174
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    .line 176
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->c()Z

    move-result v1

    .line 177
    iput-boolean v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->o:Z

    .line 178
    if-eqz v1, :cond_0

    .line 179
    const-string v1, "market://details?id=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "com.dolphin.browser.engine"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->m:Ljava/lang/String;

    .line 181
    const-string v1, "engine_strategy"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    const-string v2, "is_strategies_synced"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->l:Z

    .line 185
    const-string v2, "frequency"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g:I

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 189
    :cond_0
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->e:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;-><init>()V

    sput-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->e:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    .line 170
    :cond_0
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->e:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 394
    const-string v0, "direct_promote"

    .line 406
    :goto_0
    return-object v0

    .line 395
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 396
    const-string v0, "special_webpage"

    goto :goto_0

    .line 397
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 398
    const-string v0, "html5_webpage"

    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 400
    const-string v0, "nightmode"

    goto :goto_0

    .line 401
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 402
    const-string v0, "back_forward"

    goto :goto_0

    .line 403
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 404
    const-string v0, "network_diagnose"

    goto :goto_0

    .line 406
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 411
    if-nez p1, :cond_1

    const-string v0, "download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "settings_new"

    const-string v1, "Dolphin_Jetpack"

    const-string v2, "download"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    const-string v1, "engine promote"

    invoke-static {v1, v0, p2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 193
    const/16 v0, 0x8

    new-array v4, v0, [Lcom/dolphin/browser/webkit/management/f;

    .line 194
    array-length v5, v4

    .line 195
    const-string v0, "enable_state"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v3, v2

    .line 198
    :goto_0
    if-ge v3, v5, :cond_1

    .line 199
    new-instance v7, Lcom/dolphin/browser/webkit/management/f;

    shr-int v0, v6, v3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {v7, v3, v0}, Lcom/dolphin/browser/webkit/management/f;-><init>(IZ)V

    aput-object v7, v4, v3

    .line 198
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 199
    goto :goto_1

    .line 202
    :cond_1
    const/4 v0, 0x2

    aget-object v0, v4, v0

    const-string v2, "show_game_alert"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/webkit/management/f;->a(Z)V

    .line 204
    const/4 v0, 0x7

    aget-object v0, v4, v0

    const-string v2, "show_nightmode_alert"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/webkit/management/f;->a(Z)V

    .line 206
    const/4 v0, 0x3

    aget-object v0, v4, v0

    const-string v2, "show_normal_alert"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/webkit/management/f;->a(Z)V

    .line 208
    aget-object v0, v4, v1

    const-string v2, "show_startup_alert"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/webkit/management/f;->a(Z)V

    .line 210
    const/4 v0, 0x4

    aget-object v0, v4, v0

    const-string v2, "show_reload_alert"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/webkit/management/f;->a(Z)V

    .line 212
    iput-object v4, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->k:[Lcom/dolphin/browser/webkit/management/f;

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->i()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 708
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const-string v0, "frequency"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 712
    const-string v0, "download_link"

    const-string v2, "http://goo.gl/jh24c"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    const-string v0, "white_list"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 715
    const-string v0, "strategies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 717
    if-eqz v7, :cond_4

    .line 718
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v3, v1

    move v0, v1

    .line 719
    :goto_1
    if-ge v3, v8, :cond_5

    .line 721
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 722
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 724
    const/4 v2, -0x1

    .line 726
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 729
    :goto_2
    if-ltz v2, :cond_2

    .line 730
    const-wide/high16 v9, 0x4000000000000000L

    int-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v2, v9

    .line 731
    div-int v9, v0, v2

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v13, :cond_3

    .line 719
    :cond_2
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 735
    :cond_3
    add-int/2addr v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    .line 740
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->d()V

    .line 741
    iget-object v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    const-string v3, "engine_strategy"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 743
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 744
    const-string v3, "frequency"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 745
    const-string v3, "download_link"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    const-string v3, "white_list"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 747
    const-string v3, "enable_state"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 748
    const-string v0, "is_strategies_synced"

    invoke-interface {v2, v0, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 751
    iput v4, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g:I

    .line 752
    invoke-direct {p0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->j()V

    .line 753
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 754
    iput-boolean v13, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->l:Z

    goto/16 :goto_0

    .line 727
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method static synthetic b(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 490
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 491
    const-string v0, "show_game_alert"

    .line 503
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 511
    :goto_1
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 493
    const-string v0, "show_normal_alert"

    goto :goto_0

    .line 494
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 495
    const-string v0, "show_nightmode_alert"

    goto :goto_0

    .line 496
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 497
    const-string v0, "show_startup_alert"

    goto :goto_0

    .line 498
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 499
    const-string v0, "show_reload_alert"

    goto :goto_0

    .line 501
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    :cond_5
    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    const-string v2, "engine_strategy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->k:[Lcom/dolphin/browser/webkit/management/f;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/webkit/management/f;->a(Z)V

    .line 509
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    .line 528
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 565
    :cond_0
    :goto_0
    return-object v0

    .line 555
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_3

    .line 558
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_3
    array-length v3, v2

    .line 562
    :goto_1
    if-ge v1, v3, :cond_0

    .line 563
    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->i:Landroid/widget/CheckBox;

    .line 361
    iget v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->j:I

    .line 362
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 364
    :cond_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b(I)V

    .line 366
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->i:Landroid/widget/CheckBox;

    .line 367
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    .line 535
    const-string v1, "engine_strategy"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 537
    const-string v2, "white_list"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 539
    if-eqz v2, :cond_1

    .line 540
    const-string v0, "white_list"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->h:Ljava/util/List;

    goto :goto_0

    .line 542
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e021e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 548
    :cond_2
    invoke-direct {p0, v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->h:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 760
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->m()Lcom/dolphin/browser/core/f;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/core/f;->b:Lcom/dolphin/browser/core/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 762
    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0388

    .line 765
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 766
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e021d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 767
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 768
    if-eqz p2, :cond_2

    .line 769
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e020a

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e020b

    new-instance v3, Lcom/dolphin/browser/webkit/management/h;

    invoke-direct {v3, p0, v1, p1}, Lcom/dolphin/browser/webkit/management/h;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ZLandroid/content/Context;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 796
    :goto_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 797
    return-void

    .line 760
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 762
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0387

    goto :goto_1

    .line 794
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00d2

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-boolean v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->o:Z

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->k:[Lcom/dolphin/browser/webkit/management/f;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 226
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v2

    .line 228
    invoke-virtual {v1}, Lcom/dolphin/browser/webkit/management/f;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/webkit/management/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-boolean v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->o:Z

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->k:[Lcom/dolphin/browser/webkit/management/f;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 247
    invoke-virtual {v1}, Lcom/dolphin/browser/webkit/management/f;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/webkit/management/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->j()V

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ZILandroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 294
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)Z

    move-result v0

    return v0
.end method

.method public a(ZILandroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)Z
    .locals 9

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->o:Z

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    .line 303
    :cond_0
    if-ltz p2, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong id!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g:I

    if-gez v0, :cond_3

    if-nez p1, :cond_3

    .line 307
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->k:[Lcom/dolphin/browser/webkit/management/f;

    aget-object v0, v0, p2

    .line 310
    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/f;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/f;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 311
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_6
    iput p2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->j:I

    .line 317
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 318
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a:[I

    aget v0, v0, p2

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 319
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->c:[I

    aget v0, v0, p2

    new-instance v1, Lcom/dolphin/browser/webkit/management/m;

    new-instance v2, Lcom/dolphin/browser/webkit/management/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/dolphin/browser/webkit/management/j;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILcom/dolphin/browser/webkit/management/g;)V

    invoke-direct {v1, p0, v2, p4}, Lcom/dolphin/browser/webkit/management/m;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->d:[I

    aget v7, v0, p2

    new-instance v8, Lcom/dolphin/browser/webkit/management/m;

    new-instance v0, Lcom/dolphin/browser/webkit/management/k;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/webkit/management/k;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILandroid/content/Context;ZLcom/dolphin/browser/webkit/management/g;)V

    invoke-direct {v8, p0, v0, p5}, Lcom/dolphin/browser/webkit/management/m;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_7

    const/4 v0, 0x7

    if-ne p2, v0, :cond_a

    .line 325
    :cond_7
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03006d

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 327
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 329
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 330
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0211

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 331
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 332
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 335
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iput-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->i:Landroid/widget/CheckBox;

    .line 337
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 338
    const/4 v2, 0x7

    if-ne p2, v2, :cond_9

    .line 339
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 343
    :goto_1
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b:[I

    aget v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 347
    :goto_2
    new-instance v0, Lcom/dolphin/browser/webkit/management/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/dolphin/browser/webkit/management/i;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ILcom/dolphin/browser/webkit/management/g;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    if-nez p1, :cond_8

    .line 350
    iget v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g:I

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    const-string v1, "engine_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 353
    const-string v1, "frequency"

    iget v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 356
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 345
    :cond_a
    sget-object v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b:[I

    aget v0, v0, p2

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getFreeDataKey()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->n:I

    .line 235
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->n:I

    invoke-interface {p1, v1}, Lcom/dolphin/browser/core/ITab;->getPageData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->n:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/dolphin/browser/core/ITab;->setPageData(ILjava/lang/Object;)V

    .line 238
    const-string v0, "javascript:(function() {if(window.html5TagCheckInerface){var length = document.getElementsByTagName(\'canvas\').length;if (length > 0) {window.location = \'dolphin://jsreq/html5TagCheckInerface/onCanvasTagFound\';}}})();"

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 240
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-boolean v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->k:[Lcom/dolphin/browser/webkit/management/f;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/dolphin/browser/webkit/management/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iput-boolean v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->l:Z

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    const-string v1, "engine_strategy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string v1, "is_strategies_synced"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 260
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    const-string v1, "engine_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    const-string v1, "show_game_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v1, "show_normal_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v1, "show_nightmode_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v1, "show_startup_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v1, "show_reload_alert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 290
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eg;->a()Lcom/dolphin/browser/core/g;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/dolphin/browser/core/g;->b(ZZ)V

    .line 524
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string v0, "http://goo.gl/jh24c"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;
    .locals 1

    .prologue
    .line 574
    new-instance v0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->o:Z

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->l:Z

    if-nez v0, :cond_0

    .line 645
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/dolphin/browser/webkit/management/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/webkit/management/g;-><init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V

    .line 657
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 662
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v0

    .line 663
    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v1

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    const-string v1, "pn=%s&src=%s&os_vn=%s&re=%s&model=%s&rom=%s&ver=%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 672
    const-string v1, "\\*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://opsen.dolphin-browser.com/api/1/recommend.json?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    const-string v1, "EngineStrategyManager"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v0, "EngineStrategy"

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 677
    const/4 v1, 0x0

    .line 679
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 680
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 681
    iget-object v1, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    .line 682
    const-string v0, "EngineStrategyManager"

    const-string v2, "get entity"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    :goto_0
    if-nez v1, :cond_1

    .line 689
    const-string v0, "EngineStrategyManager"

    const-string v1, "entity is null, return"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    :goto_1
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 685
    :catch_1
    move-exception v0

    .line 686
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 693
    :cond_1
    :try_start_1
    const-string v0, "EngineStrategyManager"

    const-string v2, "try to decode entity to json"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->b(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 698
    const-string v1, "EngineStrategyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 700
    :catch_2
    move-exception v0

    .line 701
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 702
    :catch_3
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
