.class Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;
.super Landroid/os/AsyncTask;
.source "GooglePlayCloudMessagingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->registerInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private currentAttempt:I

.field private currentBackoff:J

.field private lastException:Ljava/lang/Throwable;

.field private maxAttempt:I

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

.field private final synthetic val$senderId:Ljava/lang/String;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$senderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$listener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentAttempt:I

    .line 88
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentBackoff:J

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->maxAttempt:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->lastException:Ljava/lang/Throwable;

    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    :try_start_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sleeping for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentBackoff:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms before retrying GCM registration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    iget-wide v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentBackoff:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 134
    iget-wide v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentBackoff:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentBackoff:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->lastException:Ljava/lang/Throwable;

    .line 141
    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$tag:Ljava/lang/String;

    const-string v2, "Unexpected error has occured while registering for GCM"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e1":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$tag:Ljava/lang/String;

    const-string v2, "Thread interrupted: abort!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 94
    iget-object v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$tag:Ljava/lang/String;

    const-string v4, "Registering to cloud messaging server..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v2, ""

    .line 99
    .local v2, "regId":Ljava/lang/String;
    :cond_0
    :try_start_0
    # getter for: Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->access$1()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    if-nez v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    invoke-static {v3}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->access$2(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)V

    .line 103
    :cond_1
    iget v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentAttempt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentAttempt:I

    .line 104
    iget-object v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->maxAttempt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    # getter for: Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->access$1()Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$senderId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    iget v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->currentAttempt:I

    iget v4, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->maxAttempt:I

    if-ge v3, v4, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$listener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    iget-object v4, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->lastException:Ljava/lang/Throwable;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 121
    :cond_4
    return-object v2

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$listener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    invoke-interface {v0, v1, v1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;->onError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/google/GooglePlayCloudMessagingUtils$2;->val$listener:Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;

    invoke-interface {v0, p1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/IRegistrationCMListener;->onSucess(Ljava/lang/String;)V

    goto :goto_0
.end method
