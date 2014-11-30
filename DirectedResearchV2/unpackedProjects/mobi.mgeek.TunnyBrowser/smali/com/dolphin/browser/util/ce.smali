.class public final Lcom/dolphin/browser/util/ce;
.super Ljava/lang/Object;
.source "SIMManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/ce;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 40
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 46
    :try_start_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 50
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 51
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 62
    :goto_0
    iput-object v3, p0, Lcom/dolphin/browser/util/ce;->b:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/dolphin/browser/util/ce;->f:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/dolphin/browser/util/ce;->g:Ljava/lang/String;

    .line 65
    if-eqz v0, :cond_2

    .line 66
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ce;->h:Ljava/lang/String;

    .line 73
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ce;->c:Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ce;->d:Ljava/lang/String;

    .line 78
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ce;->e:Ljava/lang/String;

    .line 84
    :cond_0
    return-void

    .line 54
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    .line 55
    :try_start_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    .line 56
    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v0

    move-object v3, v4

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    .line 60
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    .line 68
    :cond_2
    iput-object v4, p0, Lcom/dolphin/browser/util/ce;->h:Ljava/lang/String;

    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v4

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/util/ce;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/dolphin/browser/util/ce;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/ce;->a:Lcom/dolphin/browser/util/ce;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/dolphin/browser/util/ce;

    invoke-direct {v0}, Lcom/dolphin/browser/util/ce;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/ce;->a:Lcom/dolphin/browser/util/ce;

    .line 27
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/ce;->a:Lcom/dolphin/browser/util/ce;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/util/ce;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ce;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/util/ce;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, ""

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ce;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/util/ce;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "00"

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ce;->d:Ljava/lang/String;

    goto :goto_0
.end method
