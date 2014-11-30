.class public Lcom/dolphin/browser/q/a/v;
.super Ljava/lang/Object;
.source "UploadNotification.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/dolphin/browser/q/a/v;->b:Landroid/app/NotificationManager;

    .line 33
    return-void
.end method

.method private a()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const v7, 0x7f080148

    const v6, 0x7f080147

    const v5, 0x7f080035

    const/4 v4, 0x0

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f030114

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f030115

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 97
    new-instance v1, Lcom/dolphin/browser/downloads/c;

    iget-object v2, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/downloads/c;-><init>(Landroid/content/Context;)V

    .line 98
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->a()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 100
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->b()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 102
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->b()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 104
    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->c()F

    move-result v2

    .line 105
    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 106
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-string v2, "setTextSize"

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->c()F

    move-result v3

    invoke-virtual {v0, v5, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->d()F

    move-result v2

    .line 110
    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-string v2, "setTextSize"

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->d()F

    move-result v3

    invoke-virtual {v0, v6, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 113
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-string v2, "setTextSize"

    invoke-virtual {v1}, Lcom/dolphin/browser/downloads/c;->d()F

    move-result v1

    invoke-virtual {v0, v7, v2, v1}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/q/a/w;)V
    .locals 8

    .prologue
    const v7, 0x7f080377

    const v5, 0x1080088

    const/4 v6, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const v1, 0x1080089

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-static {v5, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPLOAD_HIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 53
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 79
    :goto_1
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 80
    iget-object v1, p0, Lcom/dolphin/browser/q/a/v;->b:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->a()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/v;->a()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080035

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080378

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->c()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 61
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080147

    invoke-virtual {p1}, Lcom/dolphin/browser/q/a/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 63
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/Configuration;->isMiui()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-string v2, "setBackgroundResource"

    const v3, 0x1080005

    invoke-virtual {v1, v7, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 70
    :cond_2
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 73
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPLOAD_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/dolphin/browser/q/a/v;->a:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1
.end method
