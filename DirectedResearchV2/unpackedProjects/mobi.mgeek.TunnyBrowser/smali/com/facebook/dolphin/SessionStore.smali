.class public Lcom/facebook/dolphin/SessionStore;
.super Ljava/lang/Object;
.source "SessionStore.java"


# static fields
.field private static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY:Ljava/lang/String; = "facebook-session"

.field private static final LAST_UPDATE:Ljava/lang/String; = "last_update"

.field private static final TOKEN:Ljava/lang/String; = "access_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    const-string v0, "facebook-session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public static restore(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;)Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 46
    const-string v0, "facebook-session"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "last_update"

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/dolphin/Facebook;->setTokenFromCache(Ljava/lang/String;JJ)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public static save(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 35
    const-string v0, "facebook-session"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    const-string v1, "expires_in"

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    const-string v1, "last_update"

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getLastAccessUpdate()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
