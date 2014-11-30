.class Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;
.super Ljava/lang/Object;
.source "AmazonBroadcastMessageHandler.java"

# interfaces
.implements Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;->this$0:Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gamesys/android/tools/ane/ToolsContext;->cmEnabled:Z

    .line 47
    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchErrorCodeEvent(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADM Registraton failure with code :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 3
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler$1;->this$0:Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;

    invoke-virtual {v0}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gamesys/android/tools/ane/ToolsContext;->cmEnabled:Z

    .line 36
    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v0

    .line 37
    const-string v1, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION_ID"

    .line 36
    invoke-virtual {v0, p1, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonBroadcastMessageHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADM Registraton sucessful regId :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
