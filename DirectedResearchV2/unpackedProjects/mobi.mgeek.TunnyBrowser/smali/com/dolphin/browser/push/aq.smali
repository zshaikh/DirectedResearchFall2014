.class Lcom/dolphin/browser/push/aq;
.super Ljava/lang/Object;
.source "PushProcessor.java"

# interfaces
.implements Lcom/dolphin/browser/push/ax;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/dolphin/browser/push/aq;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 982
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 944
    return-void
.end method

.method public a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/Network/n;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 948
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 950
    :try_start_0
    iget-object v0, p2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 951
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 952
    if-nez v1, :cond_3

    .line 953
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 954
    const-string v0, "PushProcessor"

    const-string v2, "Got offline message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 955
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 956
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 957
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 959
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 960
    invoke-static {v0, v4}, Lcom/dolphin/browser/push/data/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/push/data/h;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 970
    :catch_0
    move-exception v0

    .line 971
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    invoke-static {p2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 976
    :cond_1
    :goto_1
    return v5

    .line 966
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 967
    iget-object v0, p0, Lcom/dolphin/browser/push/aq;->a:Lcom/dolphin/browser/push/ag;

    invoke-static {v0, v2}, Lcom/dolphin/browser/push/ag;->a(Lcom/dolphin/browser/push/ag;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 973
    :cond_3
    invoke-static {p2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0
.end method
