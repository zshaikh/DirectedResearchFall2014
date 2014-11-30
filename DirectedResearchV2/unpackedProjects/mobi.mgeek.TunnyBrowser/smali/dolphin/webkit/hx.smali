.class Ldolphin/webkit/hx;
.super Landroid/os/Handler;
.source "WebSyncManager.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/WebSyncManager;


# direct methods
.method private constructor <init>(Ldolphin/webkit/WebSyncManager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Ldolphin/webkit/hx;->a:Ldolphin/webkit/WebSyncManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebSyncManager;Ldolphin/webkit/hw;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ldolphin/webkit/hx;-><init>(Ldolphin/webkit/WebSyncManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/16 v1, 0x65

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Ldolphin/webkit/hx;->a:Ldolphin/webkit/WebSyncManager;

    invoke-virtual {v0}, Ldolphin/webkit/WebSyncManager;->syncFromRamToFlash()V

    .line 62
    invoke-virtual {p0, v1}, Ldolphin/webkit/hx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 63
    # getter for: Ldolphin/webkit/WebSyncManager;->SYNC_LATER_INTERVAL:I
    invoke-static {}, Ldolphin/webkit/WebSyncManager;->access$000()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/hx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 65
    :cond_0
    return-void
.end method
