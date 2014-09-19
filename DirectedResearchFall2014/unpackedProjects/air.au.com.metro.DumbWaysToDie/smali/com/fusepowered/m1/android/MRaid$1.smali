.class final Lcom/fusepowered/m1/android/MRaid$1;
.super Ljava/lang/Object;
.source "MRaid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MRaid;->downloadMraidJs(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v4, ")"

    .line 110
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMJS -  download start ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 111
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 113
    .local v3, response:Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMJS -  download finish ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$context:Landroid/content/Context;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fusepowered/m1/android/MRaid;->saveMRaid(Landroid/content/Context;Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fusepowered/m1/android/MRaid;->storeMraidUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMJS -  download saved ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/MRaid$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 118
    :cond_0
    sget-object v4, Lcom/fusepowered/m1/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 120
    sget-object v4, Lcom/fusepowered/m1/android/MRaid;->finishedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MRaid$Finished;

    .line 121
    .local v1, fin:Lcom/fusepowered/m1/android/MRaid$Finished;
    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Lcom/fusepowered/m1/android/MRaid$Finished;->finished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    .end local v1           #fin:Lcom/fusepowered/m1/android/MRaid$Finished;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 130
    .local v0, e:Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v4

    throw v4

    .line 132
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 134
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 138
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
