.class public Lcom/playtika/extensions/notifications/NotificationTimerService;
.super Landroid/app/Service;
.source "NotificationTimerService.java"


# instance fields
.field private className:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private contentText:Ljava/lang/String;

.field private iconID:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 5

    .prologue
    .line 48
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->className:Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v2, "resultIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 50
    const/high16 v4, 0x8000000

    .line 49
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 52
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 53
    .local v1, "notification":Landroid/app/Notification;
    iget v3, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->iconID:I

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 54
    iget-object v3, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->title:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 56
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 57
    iget-object v3, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->contentText:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 59
    return-object v1
.end method

.method private showNotification()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/playtika/extensions/notifications/NotificationTimerService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    .line 41
    .local v1, "notification":Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/playtika/extensions/notifications/NotificationTimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 42
    .local v0, "nManager":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 44
    invoke-virtual {p0}, Lcom/playtika/extensions/notifications/NotificationTimerService;->stopSelf()V

    .line 45
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    .line 25
    const-string v0, "extra_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->title:Ljava/lang/String;

    .line 26
    const-string v0, "extra_content_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->contentText:Ljava/lang/String;

    .line 27
    const-string v0, "extra_class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->className:Ljava/lang/Class;

    .line 28
    const-string v0, "extra_icon_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->iconID:I

    .line 29
    iget-object v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->contentText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playtika/extensions/notifications/NotificationTimerService;->className:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/playtika/extensions/notifications/NotificationTimerService;->stopSelf()V

    move v0, v2

    .line 36
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/playtika/extensions/notifications/NotificationTimerService;->showNotification()V

    move v0, v2

    .line 36
    goto :goto_0
.end method
