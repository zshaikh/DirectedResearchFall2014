.class public Lcom/dolphin/browser/message/g;
.super Ljava/lang/Object;
.source "PushNotificationManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/message/g;


# instance fields
.field private b:J

.field private c:Z

.field private d:I

.field private e:Landroid/content/SharedPreferences;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 77
    const-string v1, "c2dm"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    const-string v1, "last_message_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dolphin/browser/message/g;->f:J

    .line 79
    const-string v1, "last_message_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/g;->g:Ljava/lang/String;

    .line 80
    const-string v1, "pref_last_notif_check_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dolphin/browser/message/g;->b:J

    .line 81
    const-string v1, "remainder_retry_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/message/g;->d:I

    .line 82
    const-string v1, "pref_news_notification_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/message/g;->c:Z

    .line 83
    iput-object v0, p0, Lcom/dolphin/browser/message/g;->e:Landroid/content/SharedPreferences;

    .line 84
    return-void
.end method

.method public static a()Lcom/dolphin/browser/message/g;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/dolphin/browser/message/g;->a:Lcom/dolphin/browser/message/g;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/dolphin/browser/message/g;

    invoke-direct {v0}, Lcom/dolphin/browser/message/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/message/g;->a:Lcom/dolphin/browser/message/g;

    .line 65
    :cond_0
    sget-object v0, Lcom/dolphin/browser/message/g;->a:Lcom/dolphin/browser/message/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x7530

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/message/g;->a(Landroid/content/Context;J)V

    .line 94
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/message/C2DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "delay"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "PushNotificationManager"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/message/MessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "PushNotificationManager"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/message/g;->a(Landroid/content/Context;Z)V

    .line 111
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/message/C2DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 128
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dolphin.action.MESSAGE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 223
    iput p1, p0, Lcom/dolphin/browser/message/g;->d:I

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/message/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remainder_retry_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method

.method a(J)V
    .locals 2

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/dolphin/browser/message/g;->f:J

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/message/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    const-string v1, "last_message_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 160
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dolphin/browser/message/g;->g:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/message/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    const-string v1, "last_message_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/dolphin/browser/message/g;->c:Z

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/message/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_news_notification_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    return-void
.end method

.method b()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/dolphin/browser/message/g;->f:J

    return-wide v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/message/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    iput-wide v0, p0, Lcom/dolphin/browser/message/g;->b:J

    .line 205
    iget-object v2, p0, Lcom/dolphin/browser/message/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_last_notif_check_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    iget-wide v2, p0, Lcom/dolphin/browser/message/g;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xd29240

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/dolphin/browser/message/g;->d:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/dolphin/browser/message/g;->c:Z

    return v0
.end method
