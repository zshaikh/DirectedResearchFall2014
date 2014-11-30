.class Lcom/dolphin/browser/ui/view/y;
.super Ljava/lang/Object;
.source "WebImageView.java"

# interfaces
.implements Lcom/dolphin/browser/b/h;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/WebImageView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/WebImageView;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 444
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Lcom/dolphin/browser/ui/view/WebImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/WebImageView;->b(Lcom/dolphin/browser/ui/view/WebImageView;)V

    .line 446
    if-eqz p1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/WebImageView;->c(Lcom/dolphin/browser/ui/view/WebImageView;)V

    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    invoke-static {v0, p1}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Lcom/dolphin/browser/ui/view/WebImageView;Landroid/graphics/Bitmap;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/view/WebImageView;->a(Lcom/dolphin/browser/ui/view/WebImageView;Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/y;->a:Lcom/dolphin/browser/ui/view/WebImageView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/WebImageView;->d(Lcom/dolphin/browser/ui/view/WebImageView;)V

    goto :goto_0
.end method
