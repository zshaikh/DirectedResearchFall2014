.class public Lcom/dolphin/browser/b/m;
.super Ljava/lang/Object;
.source "ImageManagerConfig.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 18
    const-string v0, "Dolphin Webzine Pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 29
    invoke-static {p0}, Lcom/dolphin/browser/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    const-string v1, "PREF_CLEAN_IMAGE_LAST_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 33
    return-void
.end method

.method public static b(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 23
    invoke-static {p0}, Lcom/dolphin/browser/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    const-string v1, "PREF_CLEAN_IMAGE_LAST_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/dolphin/browser/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    const-string v1, "PREF_CLEAN_THUMB_LAST_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 47
    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 37
    invoke-static {p0}, Lcom/dolphin/browser/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    const-string v1, "PREF_CLEAN_THUMB_LAST_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
