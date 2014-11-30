.class Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;
.super Landroid/os/AsyncTask;
.source "AdobeAIR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AdobeAIR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIR;


# direct methods
.method private constructor <init>(Lcom/adobe/air/AdobeAIR;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/AdobeAIR;Lcom/adobe/air/AdobeAIR$1;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;-><init>(Lcom/adobe/air/AdobeAIR;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6

    .prologue
    const v5, 0x493e0

    .line 373
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 376
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$500(Lcom/adobe/air/AdobeAIR;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/adobe/air/AdobeAIR;->access$600(Lcom/adobe/air/AdobeAIR;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    # setter for: Lcom/adobe/air/AdobeAIR;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$502(Lcom/adobe/air/AdobeAIR;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-static {v1}, Lcom/adobe/air/AdobeAIR;->access$500(Lcom/adobe/air/AdobeAIR;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    # getter for: Lcom/adobe/air/AdobeAIR;->SENDER_ID:Ljava/lang/String;
    invoke-static {}, Lcom/adobe/air/AdobeAIR;->access$800()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$702(Lcom/adobe/air/AdobeAIR;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mRegId:Ljava/lang/String;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$700(Lcom/adobe/air/AdobeAIR;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    const v1, 0x493e0

    # invokes: Lcom/adobe/air/AdobeAIR;->registerInBackground(I)V
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$900(Lcom/adobe/air/AdobeAIR;I)V

    .line 395
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    # invokes: Lcom/adobe/air/AdobeAIR;->sendRegistrationIdToAws()V
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$1000(Lcom/adobe/air/AdobeAIR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 393
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$AsyncTaskRunner;->this$0:Lcom/adobe/air/AdobeAIR;

    # invokes: Lcom/adobe/air/AdobeAIR;->registerInBackground(I)V
    invoke-static {v0, v5}, Lcom/adobe/air/AdobeAIR;->access$900(Lcom/adobe/air/AdobeAIR;I)V

    goto :goto_0
.end method
