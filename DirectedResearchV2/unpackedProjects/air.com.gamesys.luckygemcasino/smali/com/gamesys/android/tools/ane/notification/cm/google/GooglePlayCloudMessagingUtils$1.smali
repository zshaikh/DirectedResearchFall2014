.class Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$1;
.super Ljava/lang/Object;
.source "GooglePlayCloudMessagingUtils.java"

# interfaces
.implements Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->register(Ljava/lang/String;Lcom/gamesys/android/tools/ane/ToolsContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Lcom/gamesys/android/tools/ane/ToolsContext;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/ToolsContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$1;->val$context:Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->access$0(Z)V

    .line 58
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$1;->val$context:Lcom/gamesys/android/tools/ane/ToolsContext;

    invoke-virtual {v0, p1, p2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchErrorCodeEvent(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->access$0(Z)V

    .line 52
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$1;->val$context:Lcom/gamesys/android/tools/ane/ToolsContext;

    const-string v1, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION_ID"

    invoke-virtual {v0, p1, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
