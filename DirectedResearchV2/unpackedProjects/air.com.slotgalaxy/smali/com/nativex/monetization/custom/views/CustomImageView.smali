.class public Lcom/nativex/monetization/custom/views/CustomImageView;
.super Landroid/widget/ImageView;
.source "CustomImageView.java"

# interfaces
.implements Lcom/nativex/monetization/interfaces/ICustomImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/custom/views/CustomImageView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/custom/views/CustomImageView;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/custom/views/CustomImageView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x64

    .line 73
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setMinimumHeight(I)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setMinimumHeight(I)V

    .line 75
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setupView()V

    .line 76
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    return-void
.end method

.method protected setImageAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 125
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 128
    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/CustomImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 109
    .local v0, "anim":Landroid/view/animation/Animation;
    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CustomImageView: Unexpected exception in setImageBitmap"

    invoke-static {v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setImageFromInternet(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageFromInternet(Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V

    .line 96
    return-void
.end method

.method public setImageFromInternet(Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    .prologue
    .line 101
    invoke-static {}, Lcom/nativex/monetization/manager/ImageDownloadManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageDownloader;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/nativex/monetization/interfaces/IImageDownloader;->downloadBitmapToImageView(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V

    .line 102
    return-void
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/CustomImageView;->setImageAnimation()Landroid/view/animation/Animation;

    .line 83
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method
