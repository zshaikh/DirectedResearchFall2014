.class public Lcom/dolphin/browser/update/i;
.super Ljava/lang/Object;
.source "UpdateNotification.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/update/model/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/update/i;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/dolphin/browser/update/i;->b:Lcom/dolphin/browser/update/model/b;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 57
    const v1, 0x20120820

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v0, "message_type"

    const-string v2, "update"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "updateinfo"

    iget-object v0, p0, Lcom/dolphin/browser/update/i;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 67
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const/4 v0, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 69
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 36
    iget-object v1, p0, Lcom/dolphin/browser/update/i;->a:Landroid/content/Context;

    .line 38
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 39
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 40
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020300

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 41
    iget-object v3, p0, Lcom/dolphin/browser/update/i;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v3}, Lcom/dolphin/browser/update/model/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/update/i;->b:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v4}, Lcom/dolphin/browser/update/model/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/dolphin/browser/update/i;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 43
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 44
    const/4 v1, 0x0

    iput v1, v2, Landroid/app/Notification;->defaults:I

    .line 45
    const/4 v1, 0x0

    iput-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 46
    const v1, 0x20120820

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 48
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
