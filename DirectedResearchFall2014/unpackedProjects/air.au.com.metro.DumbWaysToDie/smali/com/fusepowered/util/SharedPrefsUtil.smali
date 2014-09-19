.class public Lcom/fusepowered/util/SharedPrefsUtil;
.super Ljava/lang/Object;
.source "SharedPrefsUtil.java"


# static fields
.field public static final CHILD_ACTIVITY_DISPLAYED:Ljava/lang/String; = "child_activity_displayed_"

.field public static final DISPLAYED_AD_ACTION:Ljava/lang/String; = "displayed_ad_action"

.field public static final DISPLAYED_AD_ID:Ljava/lang/String; = "displayed_ad_id"

.field public static final FUSE_PREFS_NAME:Ljava/lang/String; = "FusePrefsFile"

.field public static final GAME_DATA_REQUEST_ID:Ljava/lang/String; = "game_data_request_id_"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final NITIFICATION_SKIP_COUNT:Ljava/lang/String; = "notification_skip_count_"

.field public static final NITIFICATION_VIEW_COUNT:Ljava/lang/String; = "notification_view_count_"

.field public static final NUM_PLAYS:Ljava/lang/String; = "num_plays_"

.field public static final OPT_OUT:Ljava/lang/String; = "opt_out_"

.field public static final REQ_ID:Ljava/lang/String; = "request_id_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "ctxt"

    .prologue
    .line 22
    const-string v0, "FusePrefsFile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static readSharedProperty(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static readSharedProperty(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static readSharedProperty(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .parameter "ctxt"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static readSharedProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readSharedProperty(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static writeSharedProperty(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public static writeSharedProperty(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public static writeSharedProperty(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public static writeSharedProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method

.method public static writeSharedProperty(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ctxt"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/fusepowered/util/SharedPrefsUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method
