.class final Lcom/mobileapptracker/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/MobileAppTracker;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:D

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobileapptracker/c;->e:D

    iput-object v2, p0, Lcom/mobileapptracker/c;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobileapptracker/c;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobileapptracker/c;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobileapptracker/c;->i:Z

    iput-object p2, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/mobileapptracker/c;->e:D

    iput-object p7, p0, Lcom/mobileapptracker/c;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/mobileapptracker/c;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/mobileapptracker/c;->h:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/mobileapptracker/c;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "log_id"

    const-string v0, "log_action"

    const-string v0, "conversion_status"

    const-string v0, "conversion"

    const-string v9, "MobileAppTracker"

    iget-boolean v0, p0, Lcom/mobileapptracker/c;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v1, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcom/mobileapptracker/c;->e:D

    iget-object v5, p0, Lcom/mobileapptracker/c;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    const-string v1, "mat_last_open"

    const-string v2, "lastOpenDate"

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobileAppTracker"

    const-string v0, "SDK has already sent an open today, not sending request"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "MobileAppTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event to server..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/mobileapptracker/c;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/mobileapptracker/c;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "store_iap_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/mobileapptracker/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "store_iap_signature"

    iget-object v2, p0, Lcom/mobileapptracker/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Lcom/mobileapptracker/MobileAppTracker;)Lcom/mobileapptracker/UrlRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mobileapptracker/UrlRequester;->requestUrl(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v1, p0, Lcom/mobileapptracker/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobileapptracker/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mobileapptracker/c;->e:D

    iget-object v6, p0, Lcom/mobileapptracker/c;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/mobileapptracker/c;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/mobileapptracker/c;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobileAppTracker"

    const-string v0, "Request failed: track will be queued"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v2}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "MobileAppTracker"

    const-string v2, "Could not build JSON for event items or verification values"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v1}, Lcom/mobileapptracker/MobileAppTracker;->c(Lcom/mobileapptracker/MobileAppTracker;)Lcom/mobileapptracker/MATResponse;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v1}, Lcom/mobileapptracker/MobileAppTracker;->c(Lcom/mobileapptracker/MobileAppTracker;)Lcom/mobileapptracker/MATResponse;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mobileapptracker/MATResponse;->didSucceedWithData(Lorg/json/JSONObject;)V

    :cond_8
    iget-object v1, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    const-string v2, "install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :try_start_2
    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    const-string v2, "log_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobileapptracker/MobileAppTracker;->b(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    invoke-static {v1}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MobileAppTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_3
    const-string v1, "log_action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "log_action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "conversion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "conversion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rejected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "status_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileAppTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event was rejected by server: status code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "MobileAppTracker"

    const-string v0, "Server response status could not be parsed"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "MobileAppTracker"

    const-string v1, "Install log id could not be found in response"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Lcom/mobileapptracker/c;->d:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/mobileapptracker/c;->a:Lcom/mobileapptracker/MobileAppTracker;

    const-string v2, "log_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobileapptracker/MobileAppTracker;->c(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v1

    const-string v2, "MobileAppTracker"

    const-string v2, "Update log id could not be found in response"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    :cond_b
    :try_start_5
    const-string v0, "MobileAppTracker"

    const-string v1, "Event was accepted by server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v1, "options"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "options"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "conversion_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "conversion_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileAppTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " by server"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method
