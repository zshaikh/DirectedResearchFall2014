.class public Lcom/dolphin/browser/sync/at;
.super Lcom/dolphin/browser/sync/f;
.source "TabSyncManager.java"


# static fields
.field private static g:Lcom/dolphin/browser/sync/at;

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/sync/at;->g:Lcom/dolphin/browser/sync/at;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/sync/at;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/sync/f;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/at;->a()V

    .line 51
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lcom/dolphin/browser/sync/at;->h:Z

    .line 27
    return-void
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/dolphin/browser/sync/at;->h:Z

    return v0
.end method

.method public static t()Lcom/dolphin/browser/sync/at;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/dolphin/browser/sync/at;->g:Lcom/dolphin/browser/sync/at;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/dolphin/browser/sync/at;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/sync/at;->g:Lcom/dolphin/browser/sync/at;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/dolphin/browser/sync/at;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/at;-><init>()V

    sput-object v0, Lcom/dolphin/browser/sync/at;->g:Lcom/dolphin/browser/sync/at;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/dolphin/browser/sync/at;->g:Lcom/dolphin/browser/sync/at;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/dolphin/browser/sync/TabSyncService;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/TabSyncService;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/at;->d:Lcom/dolphin/browser/sync/BaseSyncService;

    .line 32
    new-instance v0, Lcom/dolphin/browser/sync/au;

    iget-object v1, p0, Lcom/dolphin/browser/sync/at;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/sync/at;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/sync/ai;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/au;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/at;->e:Lcom/dolphin/browser/sync/k;

    .line 34
    new-instance v0, Lcom/dolphin/browser/sync/TabSyncReceiver;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/TabSyncReceiver;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/at;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/sync/at;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a(Lcom/dolphin/browser/sync/f;)V

    .line 36
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/sync/at;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_tab_sync_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/sync/at;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_tab_sync_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method public a(ZJ)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/at;->c(Z)V

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/f;->a(ZJ)V

    .line 118
    return-void
.end method

.method public a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/at;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/au;

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/at;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/au;->a(Ljava/util/List;)V

    .line 98
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/sync/f;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/sync/at;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_tab_sync_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/at;->c(Z)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/sync/f;->c(J)V

    .line 112
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "pref_tab_last_sync_time"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "pref_tab_is_upload_pending"

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x3e8

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/sync/at;->c(Z)V

    .line 104
    invoke-super {p0}, Lcom/dolphin/browser/sync/f;->n()V

    .line 105
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/sync/at;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_tab_sync_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->c()Lcom/dolphin/browser/sync/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/sync/ag;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    return-object v0
.end method
