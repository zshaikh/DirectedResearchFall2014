.class public Lcom/dolphin/browser/DolphinService/f;
.super Ljava/lang/Object;
.source "DolphinService.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field private static k:Lcom/dolphin/browser/DolphinService/f;


# instance fields
.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "https://scn.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->a:Landroid/net/Uri;

    .line 26
    const-string v0, "https://sen.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->b:Landroid/net/Uri;

    .line 27
    const-string v0, "http://scn.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->c:Landroid/net/Uri;

    .line 28
    const-string v0, "http://sen.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->d:Landroid/net/Uri;

    .line 29
    const-string v0, "https://pushservice.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->e:Landroid/net/Uri;

    .line 30
    const-string v0, "https://pushservicecn.dolphin-browser.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->f:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/f;->h:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->g:Landroid/content/pm/PackageManager;

    .line 59
    return-void
.end method

.method public static a()Lcom/dolphin/browser/DolphinService/f;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/dolphin/browser/DolphinService/f;->k:Lcom/dolphin/browser/DolphinService/f;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/dolphin/browser/DolphinService/f;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/DolphinService/f;->k:Lcom/dolphin/browser/DolphinService/f;

    .line 66
    :cond_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/f;->k:Lcom/dolphin/browser/DolphinService/f;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    packed-switch p0, :pswitch_data_0

    .line 148
    :pswitch_0
    sget v0, Lcom/dolphin/browser/core/R$string;->status_unknown_error:I

    .line 152
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_1
    sget v0, Lcom/dolphin/browser/core/R$string;->status_auth_error:I

    goto :goto_0

    .line 132
    :pswitch_2
    sget v0, Lcom/dolphin/browser/core/R$string;->status_user_not_activated:I

    goto :goto_0

    .line 135
    :pswitch_3
    sget v0, Lcom/dolphin/browser/core/R$string;->status_user_not_exist:I

    goto :goto_0

    .line 138
    :pswitch_4
    sget v0, Lcom/dolphin/browser/core/R$string;->status_user_already_active:I

    goto :goto_0

    .line 141
    :pswitch_5
    sget v0, Lcom/dolphin/browser/core/R$string;->status_connect_auth_error:I

    goto :goto_0

    .line 145
    :pswitch_6
    sget v0, Lcom/dolphin/browser/core/R$string;->status_invalid_token:I

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->i:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/f;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 100
    if-eqz v3, :cond_0

    move v0, v1

    .line 101
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 102
    aget-object v2, v3, v0

    .line 104
    :try_start_1
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 106
    :try_start_2
    const-class v5, Lcom/dolphin/browser/provider/BrowserProvider;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 107
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v2, p0, Lcom/dolphin/browser/DolphinService/f;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :cond_0
    const-string v0, "DolphinService"

    const-string v2, "get Authority : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/f;->j:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/f;->j:Ljava/lang/String;

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :catch_1
    move-exception v2

    .line 114
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 101
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :catch_2
    move-exception v2

    goto :goto_1
.end method
