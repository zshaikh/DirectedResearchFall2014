.class public Lcom/dolphin/browser/message/MessageService;
.super Landroid/app/Service;
.source "MessageService.java"


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Lcom/dolphin/browser/message/a/a;

.field private c:Lcom/dolphin/browser/message/g;

.field private d:Lcom/dolphin/browser/message/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/message/MessageService;->a:Ljava/lang/Thread;

    .line 83
    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/message/MessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "source"

    const-string v2, "source_alarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/message/MessageService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/message/MessageService;->a:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/message/MessageService;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/MessageService;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->c:Lcom/dolphin/browser/message/g;

    .line 152
    invoke-static {p1}, Lcom/dolphin/browser/message/model/Message;->a(Ljava/util/List;)J

    move-result-wide v1

    .line 153
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/message/g;->a(J)V

    .line 156
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/message/e;->a()Lcom/dolphin/browser/message/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/message/e;->a(Ljava/util/List;)I

    move-result v0

    .line 157
    if-lez v0, :cond_1

    .line 158
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    invoke-virtual {p0}, Lcom/dolphin/browser/message/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/message/model/Message;->a(Landroid/content/Context;)V

    .line 160
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 100
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->c:Lcom/dolphin/browser/message/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->d:Lcom/dolphin/browser/message/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/a;->c()V

    .line 102
    invoke-direct {p0}, Lcom/dolphin/browser/message/MessageService;->c()V

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/message/MessageService;->b()V

    .line 105
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/message/MessageService;->stopSelf()V

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 119
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/dolphin/browser/message/d;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/message/d;-><init>(Lcom/dolphin/browser/message/MessageService;Z)V

    iput-object v0, p0, Lcom/dolphin/browser/message/MessageService;->a:Ljava/lang/Thread;

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/message/MessageService;->c:Lcom/dolphin/browser/message/g;

    .line 124
    :try_start_0
    const-string v0, "C2DMService"

    const-string v2, "Start checking message..."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->b:Lcom/dolphin/browser/message/a/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/message/a/a;->b(J)Ljava/util/List;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 128
    const-string v2, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/MessageService;->a(Ljava/util/List;)V

    .line 134
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->d()V

    .line 147
    :goto_1
    return-void

    .line 131
    :cond_0
    :try_start_1
    const-string v0, "C2DMService"

    const-string v2, "Checking message returned null"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    :try_start_2
    const-string v2, "C2DMService"

    const-string v3, "Retrieve message error"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->f()I

    move-result v0

    .line 139
    if-lez v0, :cond_1

    .line 140
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/g;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_2
    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->d()V

    goto :goto_1

    .line 142
    :cond_1
    const/4 v0, 0x3

    :try_start_3
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/g;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->d()V

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "C2DMService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    invoke-static {}, Lcom/dolphin/browser/message/g;->a()Lcom/dolphin/browser/message/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/MessageService;->c:Lcom/dolphin/browser/message/g;

    .line 37
    invoke-static {}, Lcom/dolphin/browser/message/a/a;->a()Lcom/dolphin/browser/message/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/MessageService;->b:Lcom/dolphin/browser/message/a/a;

    .line 38
    new-instance v0, Lcom/dolphin/browser/message/a;

    invoke-direct {p0}, Lcom/dolphin/browser/message/MessageService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/message/a;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/dolphin/browser/message/MessageService;->d:Lcom/dolphin/browser/message/a;

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    const-string v2, "C2DMService"

    const-string v3, "onStartCommand with flags %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 51
    invoke-super {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/dolphin/browser/message/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/message/g;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->isPushNotificationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "force"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 56
    const-string v3, "source"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v4, "C2DMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "source_alarm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dolphin/browser/message/MessageService;->d:Lcom/dolphin/browser/message/a;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/message/a;->a(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    or-int/2addr v0, v2

    .line 59
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/MessageService;->b(Z)V

    .line 66
    :cond_0
    :goto_1
    const/4 v0, 0x2

    return v0

    :cond_1
    move v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/message/MessageService;->d:Lcom/dolphin/browser/message/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/a;->b()V

    .line 62
    invoke-direct {p0}, Lcom/dolphin/browser/message/MessageService;->b()V

    goto :goto_1
.end method
