.class Lcom/dolphin/browser/share/facebook/h;
.super Lcom/dolphin/browser/util/f;
.source "FacebookShareViewContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/h;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/h;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/facebook/h;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/h;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Z)V

    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/h;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->o(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/h;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 379
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/facebook/h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
