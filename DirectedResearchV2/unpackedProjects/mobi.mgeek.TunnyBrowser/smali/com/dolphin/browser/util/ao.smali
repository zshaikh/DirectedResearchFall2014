.class public Lcom/dolphin/browser/util/ao;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/ao;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "version_key_preferences"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ao;->b:Landroid/content/SharedPreferences;

    .line 41
    iput-boolean v1, p0, Lcom/dolphin/browser/util/ao;->c:Z

    .line 42
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/util/ao;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/dolphin/browser/util/ao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/ao;->a:Lcom/dolphin/browser/util/ao;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/dolphin/browser/util/ao;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/util/ao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/util/ao;->a:Lcom/dolphin/browser/util/ao;

    .line 48
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/ao;->a:Lcom/dolphin/browser/util/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "com.dolphin.browser.cn."

    .line 116
    const-string v0, "com.dolphin.browser.cn."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 118
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v2, "com.dolphin.browser.cn."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/ao;->b(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-object p1
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    iget-object v2, p0, Lcom/dolphin/browser/util/ao;->b:Landroid/content/SharedPreferences;

    const-string v3, "channel_name"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/dolphin/browser/util/ao;->b:Landroid/content/SharedPreferences;

    const-string v3, "channel_name"

    const-string v4, "ofw"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-direct {p0, v2}, Lcom/dolphin/browser/util/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string v2, "ofw"

    .line 97
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dolphin/browser/util/ao;->d:Ljava/lang/String;

    .line 98
    const-string v3, "ChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Channel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v1, p0, Lcom/dolphin/browser/util/ao;->c:Z

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/util/ao;->b(Ljava/lang/String;)V

    .line 103
    :cond_1
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/util/ao;->c()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/ao;->b(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/dolphin/browser/util/ao;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dolphin/browser/util/ao;->c:Z

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/dolphin/browser/util/ao;->e()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ao;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/util/ao;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "channel_name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "channel.txt"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "ofw"

    iput-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/util/ao;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ofw"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
