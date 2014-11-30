.class public Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;
.super Ljava/lang/Object;
.source "AppoxeeGCMRegIDListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;
    }
.end annotation


# static fields
.field public static final UPDATE_MOBILE_USER_INFO:I = 0x5


# instance fields
.field private handler:Landroid/os/Handler;

.field private final listener:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;

.field public listenerThread:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listener:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->getCallback()Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->handler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;

    iget-object v1, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listenerThread:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;

    .line 24
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listenerThread:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->setPriority(I)V

    .line 25
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listenerThread:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;

    const-string v1, "Slotomania listen for ready GCM registration ID thread"

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->setName(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listenerThread:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;

    invoke-virtual {v0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->start()V

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;)Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listener:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;

    return-object v0
.end method

.method private getCallback()Landroid/os/Handler$Callback;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$1;-><init>(Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;)V

    return-object v0
.end method
