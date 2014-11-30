.class public Lcom/dolphin/browser/search/j;
.super Ljava/lang/Object;
.source "SearchPromotionSettings.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/search/j;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "search_promotion_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/j;
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/search/j;->a:Lcom/dolphin/browser/search/j;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/dolphin/browser/search/j;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/search/j;->a:Lcom/dolphin/browser/search/j;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/dolphin/browser/search/j;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/search/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/search/j;->a:Lcom/dolphin/browser/search/j;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/j;->a:Lcom/dolphin/browser/search/j;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v1, "redirect_data_last_sync"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    const-string v1, "redirect_data_last_modified"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    const-string v1, "can_show_add_shortcut_promotion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 50
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    const-string v1, "can_show_add_shortcut_promotion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    const-string v1, "redirect_data_last_modified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/search/j;->b:Landroid/content/SharedPreferences;

    const-string v1, "redirect_data_last_sync"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
