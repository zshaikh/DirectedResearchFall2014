.class public final Lcom/dolphin/browser/l/e;
.super Ljava/lang/Object;
.source "MasterPasswordManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/l/f;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dolphin/browser/l/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/l/e;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dolphin/browser/l/g;->a:Lcom/dolphin/browser/l/e;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 179
    :try_start_0
    instance-of v0, p1, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-static {p1}, Lcom/dolphin/browser/dolphinwebkit/i;->a(Lcom/dolphin/browser/dolphinwebkit/MyWebView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "MP"

    const-string v2, "Error while filling username and password for dolphin webkit."

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 192
    :try_start_0
    instance-of v0, p1, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {p1}, Lcom/dolphin/browser/androidwebkit/t;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "MP"

    const-string v2, "Error while filling username and password for default webkit."

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/l/e;->a:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "master_key_hint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/l;->f(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/l/e;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/dolphin/browser/l/f;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/l/f;-><init>(Lcom/dolphin/browser/l/e;Lcom/dolphin/browser/l/l;)V

    const-wide/32 v2, 0x1b7740

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/e;->b(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/BrowserSettings;->setMasterKeyEnabled(Z)V

    .line 52
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mskey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 64
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isMasterKeyEnabled()Z

    move-result v0

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    const-string v1, "mskey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/l;->e(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mskey"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 71
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 102
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/l/e;->d()V

    .line 107
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->e()V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/e;->a(Z)V

    .line 110
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/l/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/l/l;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/dolphin/browser/l/l;->g()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/l/e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/l/e;->a:Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/dolphin/browser/l/e;->j()Ljava/lang/Object;

    move-result-object v1

    .line 170
    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/l/e;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/dolphin/browser/l/e;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
