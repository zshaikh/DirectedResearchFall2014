.class Lcom/facebook/orca/images/FetchImageCoordinator$Holder;
.super Ljava/lang/Object;
.source "FetchImageCoordinator.java"


# instance fields
.field final a:Lcom/facebook/orca/images/ImageCacheKey;

.field final b:Lcom/facebook/orca/common/async/Deferred;

.field final c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lcom/facebook/orca/images/FetchImageCoordinator;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->d:Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->a:Lcom/facebook/orca/images/ImageCacheKey;

    .line 32
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->b:Lcom/facebook/orca/common/async/Deferred;

    .line 33
    iput-object p4, p0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->c:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method
