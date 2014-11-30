.class Lcom/pocketchange/android/PCSingleton$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/util/OperationQueue$Enqueuer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public offer()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    iget-wide v2, v2, Lcom/pocketchange/android/PCSingleton;->f:J

    const-wide/32 v4, 0x36ee80

    invoke-static/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;->timeHasElapsed(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1274
    :goto_0
    return v0

    .line 1252
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1253
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v0}, Lcom/pocketchange/android/PCSingleton;->c(Lcom/pocketchange/android/PCSingleton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 1255
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1256
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1257
    const-string v4, "id"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1258
    const-string v4, "version"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1259
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1264
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1265
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apps"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v2, v2, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v2}, Lcom/pocketchange/android/PCSingleton$Configuration;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pocketchange/android/PCSingleton$9$1;

    invoke-direct {v3, p0}, Lcom/pocketchange/android/PCSingleton$9$1;-><init>(Lcom/pocketchange/android/PCSingleton$9;)V

    iget-object v4, p0, Lcom/pocketchange/android/PCSingleton$9;->a:Lcom/pocketchange/android/PCSingleton;

    iget-object v4, v4, Lcom/pocketchange/android/PCSingleton;->b:Lcom/pocketchange/android/util/OperationQueue;

    const-string v5, "SEND_PACKAGE_DATA"

    invoke-virtual {v4, v5}, Lcom/pocketchange/android/util/OperationQueue;->createRemoveOperationCallback(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/PCSingleton;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Ljava/lang/Runnable;)V

    .line 1274
    const/4 v0, 0x1

    goto :goto_0
.end method
