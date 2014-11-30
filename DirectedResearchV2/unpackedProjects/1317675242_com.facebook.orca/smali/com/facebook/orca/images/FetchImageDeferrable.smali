.class public Lcom/facebook/orca/images/FetchImageDeferrable;
.super Ljava/lang/Object;
.source "FetchImageDeferrable.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/facebook/orca/images/ImageCache;

.field private final c:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

.field private final d:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/images/FetchImageCoordinator;

.field private final f:Ljava/util/Random;

.field private g:Lcom/facebook/orca/common/async/Deferred;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/google/inject/Provider;Lcom/facebook/orca/images/FetchImageCoordinator;Ljava/util/Random;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/orca/images/ImageCache;",
            "Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask;",
            ">;",
            "Lcom/facebook/orca/images/FetchImageCoordinator;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->a:Landroid/content/res/Resources;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/images/ImageCache;

    .line 45
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->c:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    .line 46
    iput-object p4, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->d:Lcom/google/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->e:Lcom/facebook/orca/images/FetchImageCoordinator;

    .line 48
    iput-object p6, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->f:Ljava/util/Random;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 53
    check-cast p1, Lcom/facebook/orca/images/FetchImageParams;

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/images/ImageCacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->a:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->g:Lcom/facebook/orca/common/async/Deferred;

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->e:Lcom/facebook/orca/images/FetchImageCoordinator;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->g:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageCoordinator;->a(Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;)Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;

    move-result-object v2

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->c:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a(Ljava/lang/Object;)Lcom/facebook/orca/common/async/KeyedAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask;

    .line 69
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;)V

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->g:Lcom/facebook/orca/common/async/Deferred;

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 76
    new-instance v3, Lcom/facebook/orca/images/ImageCacheKey;

    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    .line 77
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v4, v3}, Lcom/facebook/orca/images/ImageCache;->c(Lcom/facebook/orca/images/ImageCacheKey;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    const/4 v0, 0x1

    move v3, v0

    .line 82
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask;

    .line 83
    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;)V

    .line 92
    if-eqz v3, :cond_3

    .line 93
    const-string v2, "fetch-image-task-processing"

    .line 104
    :goto_3
    iget-object v3, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->c:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/orca/common/async/KeyedAsyncTask;)V

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "api."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->f:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch-image-api-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->f:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch-image-other-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move v3, v0

    goto :goto_2
.end method
