.class public Lcom/facebook/orca/push/mqtt/PushHandler;
.super Ljava/lang/Object;
.source "PushHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private final c:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/google/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/notify/OrcaNotificationManager;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/PushHandler;->a:Lcom/facebook/orca/cache/DataCache;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/PushHandler;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 31
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/PushHandler;->c:Lcom/google/inject/Provider;

    .line 32
    return-void
.end method

.method private a()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/PushHandler;->c:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 60
    invoke-virtual {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 62
    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/PushHandler;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/PushHandler;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/PushHandler;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "threadId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "message"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string v2, "pushed_message"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/orca/push/mqtt/PushHandler;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/mqtt/PushSource;)V

    .line 47
    :cond_0
    return-void
.end method
