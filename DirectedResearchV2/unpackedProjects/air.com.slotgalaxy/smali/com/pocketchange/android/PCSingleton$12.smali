.class Lcom/pocketchange/android/PCSingleton$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$12;->d:Lcom/pocketchange/android/PCSingleton;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$12;->a:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$12;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/pocketchange/android/PCSingleton$12;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/pocketchange/android/PCSingleton$12;->d:Lcom/pocketchange/android/PCSingleton;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$12;->a:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    iget-object v2, p0, Lcom/pocketchange/android/PCSingleton$12;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/pocketchange/android/PCSingleton$12;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pocketchange/android/PCSingleton;->a(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
