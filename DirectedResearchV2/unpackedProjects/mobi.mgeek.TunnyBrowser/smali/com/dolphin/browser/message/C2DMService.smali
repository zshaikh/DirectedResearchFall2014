.class public Lcom/dolphin/browser/message/C2DMService;
.super Landroid/app/Service;
.source "C2DMService.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Thread;

.field private c:Lcom/dolphin/browser/message/a/a;

.field private d:Lcom/dolphin/browser/message/g;

.field private e:Lcom/dolphin/browser/message/a;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->a:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->b:Ljava/lang/Thread;

    .line 103
    new-instance v0, Lcom/dolphin/browser/message/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/message/b;-><init>(Lcom/dolphin/browser/message/C2DMService;)V

    iput-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/message/C2DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/message/C2DMService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/message/C2DMService;->b:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 125
    const-string v0, "C2DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check message delay..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/message/C2DMService;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/message/C2DMService;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/message/C2DMService;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/message/C2DMService;->b()V

    return-void
.end method

.method private a(Lcom/dolphin/browser/message/model/Message;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->d:Lcom/dolphin/browser/message/g;

    .line 162
    invoke-virtual {p1}, Lcom/dolphin/browser/message/model/Message;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/message/g;->a(J)V

    .line 163
    invoke-virtual {p1}, Lcom/dolphin/browser/message/model/Message;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/message/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/message/g;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/message/C2DMService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/message/model/Message;->a(Landroid/content/Context;)V

    .line 168
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/message/C2DMService;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->d:Lcom/dolphin/browser/message/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/dolphin/browser/message/C2DMService;->d()V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/message/C2DMService;->c()V

    .line 121
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/dolphin/browser/message/C2DMService;->stopSelf()V

    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 134
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/message/C2DMService;->d:Lcom/dolphin/browser/message/g;

    .line 139
    :try_start_0
    const-string v0, "C2DMService"

    const-string v2, "Start checking message..."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->c:Lcom/dolphin/browser/message/a/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/message/a/a;->a(J)Lcom/dolphin/browser/message/model/Message;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
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

    .line 143
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/C2DMService;->a(Lcom/dolphin/browser/message/model/Message;)V

    .line 147
    :goto_0
    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->d()V

    .line 157
    :goto_1
    return-void

    .line 145
    :cond_0
    const-string v0, "C2DMService"

    const-string v2, "Checking message returned null"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "C2DMService"

    const-string v2, "Retrieve message error"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v1}, Lcom/dolphin/browser/message/g;->d()V

    .line 155
    const-string v1, "C2DMService"

    const-string v2, "Retrieve message error"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "C2DMService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-static {}, Lcom/dolphin/browser/message/g;->a()Lcom/dolphin/browser/message/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->d:Lcom/dolphin/browser/message/g;

    .line 51
    invoke-static {}, Lcom/dolphin/browser/message/a/a;->a()Lcom/dolphin/browser/message/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->c:Lcom/dolphin/browser/message/a/a;

    .line 52
    new-instance v0, Lcom/dolphin/browser/message/a;

    invoke-direct {p0}, Lcom/dolphin/browser/message/C2DMService;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/message/a;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->e:Lcom/dolphin/browser/message/a;

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->e:Lcom/dolphin/browser/message/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/a;->a()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 86
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    .line 65
    const-string v0, "C2DMService"

    const-string v1, "onStartCommand with flags %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    invoke-super {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/message/C2DMService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/message/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isPushNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "delay"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/message/C2DMService;->a(J)V

    .line 77
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/message/C2DMService;->e:Lcom/dolphin/browser/message/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/a;->b()V

    .line 73
    invoke-direct {p0}, Lcom/dolphin/browser/message/C2DMService;->c()V

    goto :goto_0
.end method
