.class public Lcom/dolphin/browser/sync/y;
.super Lcom/dolphin/browser/sync/a;
.source "FirefoxBookmarkSynchronizer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x80

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    .prologue
    .line 31
    .line 32
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const-string v1, "firefox_sync_version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/s;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 33
    return-wide v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const-string v1, "firefox_sync_version"

    invoke-virtual {v0, v1, p2, p3}, Lcom/dolphin/browser/sync/s;->b(Ljava/lang/String;J)V

    .line 46
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method public b(Lorg/json/JSONObject;)J
    .locals 3

    .prologue
    .line 38
    .line 39
    const-string v0, "latest_firefox_sid"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 40
    return-wide v0
.end method
