.class public Lcom/dolphin/browser/DolphinService/Account/p;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 4

    .prologue
    .line 50
    const-string v0, "pref_token_value"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/Account/p;-><init>()V

    .line 56
    iput-object v1, v0, Lcom/dolphin/browser/DolphinService/Account/p;->b:Ljava/lang/String;

    .line 57
    const-string v1, "pref_token_expired"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/Account/p;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/Account/p;->b(Lorg/json/JSONObject;)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    return-wide v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 93
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/p;->b:Ljava/lang/String;

    .line 94
    if-nez v3, :cond_0

    .line 95
    const-string v3, ""

    .line 97
    :cond_0
    iget-wide v5, p0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    .line 99
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->a:Lcom/dolphin/browser/DolphinService/Account/m;

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->a:Lcom/dolphin/browser/DolphinService/Account/m;

    const-string v1, "dolphin-browser.com"

    const-string v2, "token"

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/dolphin/browser/DolphinService/Account/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 102
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->a:Lcom/dolphin/browser/DolphinService/Account/m;

    const-string v1, "dolphin-browser.cn"

    const-string v2, "token"

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/dolphin/browser/DolphinService/Account/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 103
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->a:Lcom/dolphin/browser/DolphinService/Account/m;

    invoke-interface {v0}, Lcom/dolphin/browser/DolphinService/Account/m;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    const-string v1, "pref_token_expired"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/p;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string v1, "pref_token_value"

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/DolphinService/Account/p;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v1, "pref_token_expired"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v1, "pref_token_value"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->b:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/DolphinService/Account/p;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 42
    const-string v0, "expire_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    .line 43
    iget-wide v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa8c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->a:J

    .line 46
    :cond_0
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
