.class Lcom/dolphin/browser/ui/view/s;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"

# interfaces
.implements Lcom/dolphin/browser/ui/view/q;
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final c:I

.field protected final d:I

.field final synthetic e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/s;-><init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;II)V

    .line 429
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;II)V
    .locals 2

    .prologue
    .line 431
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/s;->e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/s;->b:Ljava/util/ArrayList;

    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/s;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iput p4, p0, Lcom/dolphin/browser/ui/view/s;->c:I

    .line 436
    iput p5, p0, Lcom/dolphin/browser/ui/view/s;->d:I

    .line 437
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/ui/view/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/s;->e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/dolphin/browser/ui/view/t;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/view/t;-><init>(Lcom/dolphin/browser/ui/view/s;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method public a(Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/s;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/s;->e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    iget v2, p0, Lcom/dolphin/browser/ui/view/s;->c:I

    iget v3, p0, Lcom/dolphin/browser/ui/view/s;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/s;->e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/s;->e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    iget v2, p0, Lcom/dolphin/browser/ui/view/s;->c:I

    iget v3, p0, Lcom/dolphin/browser/ui/view/s;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/s;->a(Landroid/graphics/Bitmap;)V

    .line 456
    return-void
.end method
