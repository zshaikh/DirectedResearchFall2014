.class Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "ThreadViewMapActivityTabImpl.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;

    .line 313
    invoke-static {p2}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->b:Ljava/util/List;

    .line 314
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->populate()V

    .line 329
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/OverlayItem;

    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
