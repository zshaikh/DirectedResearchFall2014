.class final Lcom/nativex/common/ExternalTrackingManager$1;
.super Ljava/lang/Object;
.source "ExternalTrackingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/common/ExternalTrackingManager;->createHandler(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    # getter for: Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->access$000()Lcom/nativex/common/ExternalTrackingManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/nativex/common/ExternalTrackingManager;

    invoke-direct {v0, v2}, Lcom/nativex/common/ExternalTrackingManager;-><init>(Lcom/nativex/common/ExternalTrackingManager$1;)V

    .line 60
    :cond_0
    # getter for: Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->access$000()Lcom/nativex/common/ExternalTrackingManager;

    move-result-object v0

    new-instance v1, Lcom/nativex/common/ExternalTrackingManager$ExternalTrackingHandler;

    invoke-direct {v1, v2}, Lcom/nativex/common/ExternalTrackingManager$ExternalTrackingHandler;-><init>(Lcom/nativex/common/ExternalTrackingManager$1;)V

    # setter for: Lcom/nativex/common/ExternalTrackingManager;->handler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/nativex/common/ExternalTrackingManager;->access$202(Lcom/nativex/common/ExternalTrackingManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 61
    return-void
.end method
