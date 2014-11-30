.class public Lcom/dolphin/browser/sync/s;
.super Lcom/dolphin/browser/sync/f;
.source "BookmarkSyncManager.java"


# static fields
.field private static g:Lcom/dolphin/browser/sync/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/sync/s;->g:Lcom/dolphin/browser/sync/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/sync/f;-><init>()V

    .line 60
    return-void
.end method

.method public static s()Lcom/dolphin/browser/sync/s;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/dolphin/browser/sync/s;->g:Lcom/dolphin/browser/sync/s;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/dolphin/browser/sync/s;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/s;-><init>()V

    sput-object v0, Lcom/dolphin/browser/sync/s;->g:Lcom/dolphin/browser/sync/s;

    .line 53
    sget-object v0, Lcom/dolphin/browser/sync/s;->g:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->a()V

    .line 55
    :cond_0
    sget-object v0, Lcom/dolphin/browser/sync/s;->g:Lcom/dolphin/browser/sync/s;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/dolphin/browser/sync/BookmarkSyncService;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/BookmarkSyncService;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/s;->d:Lcom/dolphin/browser/sync/BaseSyncService;

    .line 44
    new-instance v0, Lcom/dolphin/browser/sync/t;

    iget-object v1, p0, Lcom/dolphin/browser/sync/s;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/sync/s;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/sync/ai;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/s;->e:Lcom/dolphin/browser/sync/k;

    .line 46
    new-instance v0, Lcom/dolphin/browser/sync/BookmarkSyncReceiver;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/BookmarkSyncReceiver;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/s;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/sync/s;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a(Lcom/dolphin/browser/sync/f;)V

    .line 48
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/sync/s;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_bookmark_sync_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    return-void
.end method

.method public c()J
    .locals 4

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dolphin/browser/sync/s;->b:Landroid/content/SharedPreferences;

    const-string v1, "pref_bookmark_sync_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "pref_bookmark_last_sync_time"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "pref_bookmark_is_upload_pending"

    return-object v0
.end method

.method protected r()Lcom/dolphin/browser/sync/ah;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v0

    return-object v0
.end method
