.class public Lcom/vungle/sdk/VungleIntentService;
.super Landroid/app/Service;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/VungleIntentService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vungle/sdk/VungleIntentService$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/vungle/sdk/VungleIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    .line 111
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter

    .prologue
    const-string v0, "Http"

    .line 45
    if-eqz p1, :cond_4

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/vungle/sdk/u;->a(Landroid/content/Context;)Lcom/vungle/sdk/ap;

    .line 50
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 51
    invoke-static {v0}, Lcom/vungle/sdk/n;->a(Landroid/content/Context;)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleIntentService$a;

    if-nez v0, :cond_2

    const-string v3, "Http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/vungle/sdk/ai;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/ai;-><init>(Lcom/vungle/sdk/VungleIntentService;)V

    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService;->b:Ljava/util/Map;

    const-string v3, "Http"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0, p1}, Lcom/vungle/sdk/VungleIntentService$a;->a(Landroid/content/Intent;)V

    .line 65
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-nez v0, :cond_4

    .line 67
    :try_start_2
    sget-object v0, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown action"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    :cond_4
    :goto_0
    return-void

    .line 65
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v2

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter
    .parameter "startId"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p3}, Lcom/vungle/sdk/VungleIntentService;->onStart(Landroid/content/Intent;I)V

    .line 37
    const/4 v0, 0x2

    return v0
.end method
