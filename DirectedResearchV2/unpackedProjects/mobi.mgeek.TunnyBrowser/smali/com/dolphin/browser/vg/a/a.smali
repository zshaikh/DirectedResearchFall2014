.class public Lcom/dolphin/browser/vg/a/a;
.super Ljava/lang/Object;
.source "VoiceGestureSettings.java"


# static fields
.field private static a:Lcom/dolphin/browser/vg/a/a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/a/a;->b:Z

    .line 52
    iput-boolean v1, p0, Lcom/dolphin/browser/vg/a/a;->c:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/vg/a/a;->d:I

    .line 54
    iput v1, p0, Lcom/dolphin/browser/vg/a/a;->e:I

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/vg/a/a;->f:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/vg/a/a;->g:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static a()Lcom/dolphin/browser/vg/a/a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dolphin/browser/vg/a/a;->a:Lcom/dolphin/browser/vg/a/a;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/dolphin/browser/vg/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/vg/a/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/vg/a/a;->a:Lcom/dolphin/browser/vg/a/a;

    .line 26
    :cond_0
    sget-object v0, Lcom/dolphin/browser/vg/a/a;->a:Lcom/dolphin/browser/vg/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 145
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iput p2, p0, Lcom/dolphin/browser/vg/a/a;->d:I

    .line 149
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    const-string v1, "control_pannel_display"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/vg/a/a;->f:J

    .line 165
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/a/a;->g:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    const-string v1, "hot_words_update_time"

    iget-wide v2, p0, Lcom/dolphin/browser/vg/a/a;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v1, "hot_words_local"

    iget-object v2, p0, Lcom/dolphin/browser/vg/a/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 170
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 99
    iput-boolean p2, p0, Lcom/dolphin/browser/vg/a/a;->c:Z

    .line 100
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    const-string v1, "is_shaking_open_gesture_voice_pad"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 104
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    const-string v0, "first_time_show_voice_pad"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/a/a;->b:Z

    .line 61
    const-string v0, "is_shaking_open_gesture_voice_pad"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/vg/a/a;->c:Z

    .line 62
    const-string v0, "control_pannel_display"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/vg/a/a;->d:I

    .line 63
    const-string v0, "dolphin_key_position"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/vg/a/a;->e:I

    .line 64
    const-string v0, "hot_words_update_time"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/vg/a/a;->f:J

    .line 65
    const-string v0, "hot_words_local"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/vg/a/a;->g:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public a(Ljava/util/Locale;)Z
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/vg/a/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/vg/a/a;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/dolphin/browser/vg/a/a;->e:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/dolphin/browser/vg/a/a;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/vg/a/a;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/vg/a/a;->g:Ljava/lang/String;

    return-object v0
.end method
