.class public Lcom/playhaven/sampleapp/examples/PlayhavenCrashView;
.super Lcom/playhaven/sampleapp/examples/ExampleView;
.source "PlayhavenCrashView.java"


# instance fields
.field request:Lcom/playhaven/src/common/PHCrashReport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/playhaven/sampleapp/examples/ExampleView;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v0, "Crash Request"

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/PlayhavenCrashView;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 54
    const-string v0, "Failed with error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "formattedJson":Ljava/lang/String;
    const-string v2, "Success with response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 46
    aput-object v1, v3, v4

    .line 45
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "formattedJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public startRequest()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 33
    const-string v1, "Sample exception"

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "exception":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Lcom/playhaven/src/common/PHCrashReport;

    const-string v2, "PlayhavenCrashView - startRequest"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-direct {v1, v0, v2, v3}, Lcom/playhaven/src/common/PHCrashReport;-><init>(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)V

    iput-object v1, p0, Lcom/playhaven/sampleapp/examples/PlayhavenCrashView;->request:Lcom/playhaven/src/common/PHCrashReport;

    .line 36
    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/PlayhavenCrashView;->request:Lcom/playhaven/src/common/PHCrashReport;

    invoke-virtual {v1}, Lcom/playhaven/src/common/PHCrashReport;->send()V

    .line 38
    return-void
.end method
