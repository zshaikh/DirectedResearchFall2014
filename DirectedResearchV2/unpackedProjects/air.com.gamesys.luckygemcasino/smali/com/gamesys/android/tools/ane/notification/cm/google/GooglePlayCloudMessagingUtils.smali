.class public Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;
.super Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;
.source "GooglePlayCloudMessagingUtils.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->cmEnabled:Z

    return-void
.end method

.method static synthetic access$1()Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-void
.end method

.method public static checkServices(Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;)Z
    .locals 3
    .param p0, "ctx"    # Lcom/gamesys/android/tools/ane/ToolsContext;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 164
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 165
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/gamesys/android/tools/ane/ToolsContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x2328

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 171
    :goto_0
    const/4 v1, 0x0

    .line 173
    :goto_1
    return v1

    .line 168
    :cond_0
    const-string v1, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_DEVICE_NOT_SUPPORTED"

    const-string v2, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "Play services has not been found. GCM won\'t be supported on this device"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static register(Ljava/lang/String;Lcom/gamesys/android/tools/ane/ToolsContext;)Z
    .locals 4
    .param p0, "senderId"    # Ljava/lang/String;
    .param p1, "context"    # Lcom/gamesys/android/tools/ane/ToolsContext;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "regId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 43
    :cond_0
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to register for this Google sender ID: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->checkServices(Lcom/gamesys/android/tools/ane/ToolsContext;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$1;

    invoke-direct {v3, p1}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$1;-><init>(Lcom/gamesys/android/tools/ane/ToolsContext;)V

    invoke-static {v1, p0, v2, v3}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->registerInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;)V

    .line 71
    :goto_0
    sget-boolean v1, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->cmEnabled:Z

    return v1

    .line 62
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->cmEnabled:Z

    .line 63
    const-string v1, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_NO_DEVICE_CLIENT"

    const-string v2, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p1, v1, v2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->TAG:Ljava/lang/String;

    const-string v2, "No valid Google Play Services found."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->cmEnabled:Z

    .line 69
    const-string v1, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION_ID"

    invoke-virtual {p1, v0, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static registerInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    .prologue
    .line 85
    new-instance v0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 151
    invoke-virtual {v0, v1}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method
