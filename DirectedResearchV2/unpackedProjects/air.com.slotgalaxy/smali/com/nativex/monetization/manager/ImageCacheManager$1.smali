.class Lcom/nativex/monetization/manager/ImageCacheManager$1;
.super Landroid/os/Handler;
.source "ImageCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/manager/ImageCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/ImageCacheManager;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/ImageCacheManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nativex/monetization/manager/ImageCacheManager$1;->this$0:Lcom/nativex/monetization/manager/ImageCacheManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string v1, "ImageCacheManager: Cache cleared"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/nativex/monetization/manager/ImageCacheManager$1;->this$0:Lcom/nativex/monetization/manager/ImageCacheManager;

    const/4 v2, 0x1

    # setter for: Lcom/nativex/monetization/manager/ImageCacheManager;->isCacheCleared:Z
    invoke-static {v1, v2}, Lcom/nativex/monetization/manager/ImageCacheManager;->access$002(Lcom/nativex/monetization/manager/ImageCacheManager;Z)Z

    .line 50
    const/16 v1, 0x926

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/manager/ImageCacheManager$1;->removeMessages(I)V

    .line 51
    iget-object v1, p0, Lcom/nativex/monetization/manager/ImageCacheManager$1;->this$0:Lcom/nativex/monetization/manager/ImageCacheManager;

    invoke-virtual {v1}, Lcom/nativex/monetization/manager/ImageCacheManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImageCacheManager: Unexpected exception caught in handler"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x926
        :pswitch_0
    .end packed-switch
.end method
