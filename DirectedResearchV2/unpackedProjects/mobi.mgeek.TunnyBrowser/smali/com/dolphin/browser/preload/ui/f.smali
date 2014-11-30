.class Lcom/dolphin/browser/preload/ui/f;
.super Landroid/support/v4/view/ae;
.source "PreloadingView.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/dolphin/browser/preload/ui/PreloadingView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/preload/ui/PreloadingView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/f;->b:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/dolphin/browser/preload/ui/f;->a:Ljava/util/List;

    .line 350
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/preload/ui/f;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 367
    check-cast p1, Landroid/support/v4/view/ViewPager2;

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager2;->addView(Landroid/view/View;I)V

    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 354
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 373
    check-cast p1, Landroid/support/v4/view/ViewPager2;

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager2;->removeView(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 382
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public b_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method
