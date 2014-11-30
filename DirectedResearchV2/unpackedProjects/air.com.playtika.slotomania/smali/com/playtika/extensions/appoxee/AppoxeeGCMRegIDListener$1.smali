.class Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$1;
.super Ljava/lang/Object;
.source "AppoxeeGCMRegIDListener.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->getCallback()Landroid/os/Handler$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$1;->this$0:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$1;->this$0:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;

    # getter for: Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listener:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;
    invoke-static {v0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->access$0(Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;)Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$Listener;->onGCMRegIDReady()V

    .line 34
    iget-object v0, p0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener$1;->this$0:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;

    iget-object v0, v0, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListener;->listenerThread:Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;

    invoke-virtual {v0}, Lcom/playtika/extensions/appoxee/AppoxeeGCMRegIDListenerThread;->interrupt()V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
