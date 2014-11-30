.class Lcom/pocketchange/android/PCSingleton$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;J)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$15;->b:Lcom/pocketchange/android/PCSingleton;

    iput-wide p2, p0, Lcom/pocketchange/android/PCSingleton$15;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 387
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 388
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "timestamp"

    iget-wide v3, p0, Lcom/pocketchange/android/PCSingleton$15;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$15;->b:Lcom/pocketchange/android/PCSingleton;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton$15;->b:Lcom/pocketchange/android/PCSingleton;

    iget-object v3, v3, Lcom/pocketchange/android/PCSingleton;->q:Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-virtual {v3}, Lcom/pocketchange/android/PCSingleton$Configuration;->getSessionsURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$15;->b:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v1}, Lcom/pocketchange/android/PCSingleton;->c(Lcom/pocketchange/android/PCSingleton;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$15;->b:Lcom/pocketchange/android/PCSingleton;

    invoke-static {v2}, Lcom/pocketchange/android/PCSingleton;->c(Lcom/pocketchange/android/PCSingleton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->createIntentForRequest(Landroid/content/Context;Lorg/apache/http/client/methods/HttpUriRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 391
    return-void
.end method
