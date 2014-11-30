.class Lcom/dolphin/browser/ui/view/o;
.super Lcom/dolphin/browser/util/f;
.source "RemoteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/o;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/o;->a([Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/io/File;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/o;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 278
    const/4 v0, 0x0

    :try_start_0
    aget-object v3, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x6400000

    .line 282
    :goto_0
    iget-object v4, p0, Lcom/dolphin/browser/ui/view/o;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v5, v6, v0, v1}, Lcom/d/c;->a(Ljava/io/File;IIJ)Lcom/d/c;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Lcom/d/c;)Lcom/d/c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/o;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Z)Z

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/o;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 287
    monitor-exit v2

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    const-wide/32 v0, 0xa00000

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1
.end method
