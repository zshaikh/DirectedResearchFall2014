.class public Lcom/dolphin/browser/sync/ab;
.super Lcom/dolphin/browser/sync/f;
.source "HistorySyncManager.java"


# static fields
.field private static g:Lcom/dolphin/browser/sync/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/sync/ab;->g:Lcom/dolphin/browser/sync/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/sync/f;-><init>()V

    .line 51
    return-void
.end method

.method public static s()Lcom/dolphin/browser/sync/ab;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dolphin/browser/sync/ab;->g:Lcom/dolphin/browser/sync/ab;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dolphin/browser/sync/ab;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/ab;-><init>()V

    sput-object v0, Lcom/dolphin/browser/sync/ab;->g:Lcom/dolphin/browser/sync/ab;

    .line 44
    sget-object v0, Lcom/dolphin/browser/sync/ab;->g:Lcom/dolphin/browser/sync/ab;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->a()V

    .line 46
    :cond_0
    sget-object v0, Lcom/dolphin/browser/sync/ab;->g:Lcom/dolphin/browser/sync/ab;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/dolphin/browser/sync/HistorySyncService;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/HistorySyncService;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ab;->d:Lcom/dolphin/browser/sync/BaseSyncService;

    .line 35
    new-instance v0, Lcom/dolphin/browser/sync/ac;

    iget-object v1, p0, Lcom/dolphin/browser/sync/ab;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/sync/ab;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/sync/ai;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ab;->e:Lcom/dolphin/browser/sync/k;

    .line 37
    new-instance v0, Lcom/dolphin/browser/sync/HistorySyncReceiver;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/HistorySyncReceiver;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ab;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/sync/ab;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a(Lcom/dolphin/browser/sync/f;)V

    .line 39
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/sync/ab;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_history_sync_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/sync/f;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dolphin/browser/sync/ab;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_history_sync_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "pref_history_last_sync_time"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "pref_history_is_upload_pending"

    return-object v0
.end method
