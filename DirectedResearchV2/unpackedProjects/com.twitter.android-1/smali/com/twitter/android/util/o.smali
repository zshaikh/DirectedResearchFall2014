.class final Lcom/twitter/android/util/o;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/util/HashMap;

.field private final b:J

.field private synthetic c:Lcom/twitter/android/util/k;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/k;J)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/twitter/android/util/o;->b:J

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/twitter/android/util/o;->a:Ljava/util/HashMap;

    sget-boolean v1, Lcom/twitter/android/util/k;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    invoke-static {v1}, Lcom/twitter/android/util/k;->a(Lcom/twitter/android/util/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/l;

    iget-object v4, v0, Lcom/twitter/android/util/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    iget-wide v9, p0, Lcom/twitter/android/util/o;->b:J

    invoke-virtual {v1, v9, v10, v3, v4}, Lcom/twitter/android/util/k;->a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/twitter/android/util/k;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Lcom/twitter/android/network/a;

    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7, v9, v5}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/twitter/android/network/a;->a(I)Lcom/twitter/android/network/a;

    iget-boolean v0, v0, Lcom/twitter/android/util/l;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    iget-wide v1, p0, Lcom/twitter/android/util/o;->b:J

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/util/k;->a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/f;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    invoke-static {v2}, Lcom/twitter/android/util/k;->b(Lcom/twitter/android/util/k;)I

    move-result v2

    iget-object v5, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    invoke-static {v5}, Lcom/twitter/android/util/k;->b(Lcom/twitter/android/util/k;)I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/twitter/android/util/h;->b([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/util/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twitter/android/util/f;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    move-object v0, v6

    :goto_2
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/k;->b(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    iget-object v1, v0, Lcom/twitter/android/util/k;->c:[I

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    iget-object v2, v2, Lcom/twitter/android/util/k;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/o;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/twitter/android/util/o;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    iget-object v2, v2, Lcom/twitter/android/util/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twitter/android/util/o;->c:Lcom/twitter/android/util/k;

    iget-object v0, v0, Lcom/twitter/android/util/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
