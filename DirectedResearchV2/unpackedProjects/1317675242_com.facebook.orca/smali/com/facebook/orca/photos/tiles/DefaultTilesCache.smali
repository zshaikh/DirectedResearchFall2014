.class public Lcom/facebook/orca/photos/tiles/DefaultTilesCache;
.super Ljava/lang/Object;
.source "DefaultTilesCache.java"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
