.class public final Lcom/dolphin/browser/preload/l;
.super Lcom/mgeek/android/util/h;
.source "PreloadDataSyncTask.java"


# instance fields
.field protected a:Lcom/dolphin/browser/preload/n;

.field protected b:Lcom/dolphin/browser/preload/f;

.field private c:Lcom/dolphin/browser/preload/b/b;

.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 12

    .prologue
    .line 37
    const-string v0, "Preload"

    invoke-direct {p0, v0}, Lcom/mgeek/android/util/h;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/dolphin/browser/preload/n;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/preload/l;->a:Lcom/dolphin/browser/preload/n;

    .line 40
    invoke-static {v0}, Lcom/dolphin/browser/preload/f;->a(Landroid/content/Context;)Lcom/dolphin/browser/preload/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/l;->b:Lcom/dolphin/browser/preload/f;

    .line 42
    iput-boolean p1, p0, Lcom/dolphin/browser/preload/l;->d:Z

    .line 43
    new-instance v11, Lcom/dolphin/browser/preload/b/a;

    invoke-direct {v11}, Lcom/dolphin/browser/preload/b/a;-><init>()V

    .line 44
    new-instance v0, Lcom/dolphin/browser/preload/b/b;

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->f()I

    move-result v7

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->k()I

    move-result v9

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/dolphin/browser/preload/b/a;->i()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/preload/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/preload/l;->c:Lcom/dolphin/browser/preload/b/b;

    .line 50
    return-void
.end method

.method protected static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preload_yandex"

    .line 84
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0

    .line 83
    :cond_0
    const-string v0, "preload"

    goto :goto_0
.end method

.method public static c()Lcom/dolphin/browser/preload/a/b;
    .locals 3

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/dolphin/browser/preload/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/dolphin/browser/preload/a/b;->a(Lorg/json/JSONObject;Z)Lcom/dolphin/browser/preload/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "ConfigDataSyncTask"

    const-string v2, "Failed to load local data."

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/preload/l;->c:Lcom/dolphin/browser/preload/b/b;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/dolphin/browser/preload/l;->d:Z

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/preload/b/b;->a(Landroid/net/Uri$Builder;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/preload/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v0, "ConfigDataSyncTask"

    const-string v1, "already initialized."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v1, "ConfigDataSyncTask"

    const-string v2, "applyConfigData - saving tutorial strategy..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lcom/dolphin/browser/preload/a/b;->n()Lcom/dolphin/browser/preload/a/f;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/dolphin/browser/preload/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->k(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v1, "ConfigDataSyncTask"

    const-string v2, "applyConfigData - configuring for AB testing..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p1}, Lcom/dolphin/browser/preload/a;->a(Lcom/dolphin/browser/preload/a/b;)V

    .line 65
    const-string v1, "ConfigDataSyncTask"

    const-string v2, "applyConfigData - updating config data..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/preload/l;->b:Lcom/dolphin/browser/preload/f;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/preload/f;->a(Lcom/dolphin/browser/preload/a/b;)V

    .line 67
    const-string v1, "ConfigDataSyncTask"

    const-string v2, "applyConfigData - post-apply tasks."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/dolphin/browser/preload/l;->a:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/preload/n;->b(Z)V

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/preload/l;->a:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/preload/n;->d(Z)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/preload/n;->a(Z)V

    .line 71
    const-string v0, "ConfigDataSyncTask"

    const-string v1, "applyConfigData - done."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {}, Lcom/dolphin/browser/preload/l;->c()Lcom/dolphin/browser/preload/a/b;

    move-result-object v0

    .line 103
    const-string v1, "B"

    invoke-static {v1, v2}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 104
    const-string v1, "C"

    invoke-static {v1, v2}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/l;->a(Lcom/dolphin/browser/preload/a/b;)V

    .line 108
    const-string v0, "D"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "D"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v0, "D"

    invoke-static {v0, v2}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 114
    const-string v0, "ConfigDataSyncTask"

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;[Lorg/apache/http/Header;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    .line 123
    invoke-static {p1}, Lcom/dolphin/browser/preload/a/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/b;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/preload/l;->a(Lcom/dolphin/browser/preload/a/b;)V

    move v2, v1

    .line 135
    :goto_0
    const-string v3, "B"

    invoke-static {v3, v2}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 136
    const-string v2, "C"

    invoke-static {v2, v1}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 137
    if-nez v1, :cond_0

    .line 138
    const-string v1, "D"

    invoke-static {v1, v0}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 140
    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/preload/l;->c()Lcom/dolphin/browser/preload/a/b;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/preload/l;->a(Lcom/dolphin/browser/preload/a/b;)V

    move v2, v0

    move v4, v0

    move v0, v1

    move v1, v4

    .line 132
    goto :goto_0

    :cond_2
    move v1, v0

    move v2, v0

    goto :goto_0
.end method
