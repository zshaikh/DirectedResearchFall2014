.class final Lcom/google/android/gms/common/images/ImageManager$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field private aA:Z

.field final synthetic av:Lcom/google/android/gms/common/images/ImageManager;

.field private final ay:Landroid/graphics/Bitmap;

.field private final az:Ljava/util/concurrent/CountDownLatch;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$g;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$g;->ay:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/google/android/gms/common/images/ImageManager$g;->aA:Z

    iput-object p5, p0, Lcom/google/android/gms/common/images/ImageManager$g;->az:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/images/ImageManager$c;Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iput-boolean v7, p1, Lcom/google/android/gms/common/images/ImageManager$c;->au:Z

    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$c;->a(Lcom/google/android/gms/common/images/ImageManager$c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/o;

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$g;->ay:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/internal/o;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    :goto_1
    iget v5, v0, Lcom/google/android/gms/internal/o;->aE:I

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/internal/o;->b(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p1, Lcom/google/android/gms/common/images/ImageManager$c;->au:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/r;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->ay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->aA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-boolean v2, p0, Lcom/google/android/gms/common/images/ImageManager$g;->aA:Z

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/o$a;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$g;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/o$a;-><init>(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$g;->ay:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->av:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$g;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$c;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$g;->a(Lcom/google/android/gms/common/images/ImageManager$c;Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$g;->az:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->l()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->m()Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$g;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
