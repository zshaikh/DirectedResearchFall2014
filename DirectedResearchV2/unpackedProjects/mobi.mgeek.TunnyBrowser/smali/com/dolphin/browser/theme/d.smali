.class Lcom/dolphin/browser/theme/d;
.super Ljava/lang/Object;
.source "FakedSkinItem.java"

# interfaces
.implements Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/c;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dolphin/browser/theme/d;->a:Lcom/dolphin/browser/theme/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "ThemeCover"

    return-object v0
.end method

.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/theme/d;->a:Lcom/dolphin/browser/theme/c;

    invoke-static {v0}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/c;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/d;->a:Lcom/dolphin/browser/theme/c;

    invoke-static {v0}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/c;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->d_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/theme/d;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/theme/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
