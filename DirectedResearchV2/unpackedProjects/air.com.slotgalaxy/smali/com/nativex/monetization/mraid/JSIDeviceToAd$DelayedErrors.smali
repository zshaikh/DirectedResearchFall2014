.class Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;
.super Ljava/util/ArrayList;
.source "JSIDeviceToAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/JSIDeviceToAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3da2a07fa4bd2fd4L


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/JSIDeviceToAd;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/mraid/JSIDeviceToAd;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->this$0:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/mraid/JSIDeviceToAd;Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/mraid/JSIDeviceToAd;
    .param p2, "x1"    # Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;-><init>(Lcom/nativex/monetization/mraid/JSIDeviceToAd;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized executeCommands()V
    .locals 5

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 258
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    .local v1, "commandsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;>;"
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->clear()V

    .line 250
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .local v0, "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    :try_start_2
    iget-object v4, p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->this$0:Lcom/nativex/monetization/mraid/JSIDeviceToAd;

    # getter for: Lcom/nativex/monetization/mraid/JSIDeviceToAd;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v4}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->access$200(Lcom/nativex/monetization/mraid/JSIDeviceToAd;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 245
    .end local v0    # "command":Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;
    .end local v1    # "commandsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 257
    .restart local v1    # "commandsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->runDelayed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public runDelayed()V
    .locals 4

    .prologue
    const v2, 0x3b300

    .line 238
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->size()I

    move-result v1

    if-lez v1, :cond_0

    # getter for: Lcom/nativex/monetization/mraid/JSIDeviceToAd;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    # getter for: Lcom/nativex/monetization/mraid/JSIDeviceToAd;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, "msg":Landroid/os/Message;
    # getter for: Lcom/nativex/monetization/mraid/JSIDeviceToAd;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/nativex/monetization/mraid/JSIDeviceToAd;->access$100()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
