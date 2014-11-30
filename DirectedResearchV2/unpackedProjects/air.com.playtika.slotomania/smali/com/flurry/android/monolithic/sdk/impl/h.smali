.class public Lcom/flurry/android/monolithic/sdk/impl/h;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/InstallReceiver;


# direct methods
.method public constructor <init>(Lcom/flurry/android/InstallReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->b:Lcom/flurry/android/InstallReceiver;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const-string v2, "InstallReceiver"

    .line 194
    const/4 v0, 0x0

    .line 195
    const-string v1, "InstallReceiver"

    const-string v1, "persistInstallReport "

    invoke-static {v3, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->b:Lcom/flurry/android/InstallReceiver;

    invoke-static {v1}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 200
    const/4 v2, 0x3

    const-string v3, "InstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dir is..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 203
    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const/4 v2, 0x6

    const-string v3, "InstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create persistent dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    .line 241
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->b:Lcom/flurry/android/InstallReceiver;

    invoke-static {v2}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    const/4 v0, 0x3

    :try_start_2
    const-string v2, "InstallReceiver"

    const-string v3, "writing to ouput stream "

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 219
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->b:Lcom/flurry/android/InstallReceiver;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/h;->b:Lcom/flurry/android/InstallReceiver;

    invoke-static {v2}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/InstallReceiver;->a(Lcom/flurry/android/InstallReceiver;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/flurry/android/InstallReceiver;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 228
    const/4 v3, 0x3

    const-string v4, "InstallReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entry: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 234
    :goto_2
    const/4 v2, 0x6

    :try_start_3
    const-string v3, "InstallReceiver"

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 232
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method
