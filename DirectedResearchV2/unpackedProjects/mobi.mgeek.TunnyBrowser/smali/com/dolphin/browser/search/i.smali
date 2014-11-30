.class public Lcom/dolphin/browser/search/i;
.super Ljava/lang/Object;
.source "SearchEngineSettings.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/search/i;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "search_engine_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/i;->b:Landroid/content/SharedPreferences;

    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->b:Landroid/content/SharedPreferences;

    const-string v1, "user_locale_language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/i;->c:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/i;->a(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/i;
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/dolphin/browser/search/i;->a:Lcom/dolphin/browser/search/i;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/dolphin/browser/search/i;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/search/i;->a:Lcom/dolphin/browser/search/i;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/dolphin/browser/search/i;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/search/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/search/i;->a:Lcom/dolphin/browser/search/i;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/i;->a:Lcom/dolphin/browser/search/i;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/search/i;->c:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    const-string v1, "user_locale_language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 58
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    const-string v1, "changed_by_user"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 70
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/search/i;->b:Landroid/content/SharedPreferences;

    const-string v1, "changed_by_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
