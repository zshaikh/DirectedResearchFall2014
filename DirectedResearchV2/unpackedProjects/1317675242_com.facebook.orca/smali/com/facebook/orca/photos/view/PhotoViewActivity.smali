.class public Lcom/facebook/orca/photos/view/PhotoViewActivity;
.super Lcom/facebook/orca/activity/OrcaActivity;
.source "PhotoViewActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private c:Lcom/facebook/orca/cache/DataCache;

.field private d:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private e:Lcom/facebook/orca/images/UrlImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->setContentView(I)V

    .line 38
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 45
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 46
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c:Lcom/facebook/orca/cache/DataCache;

    .line 47
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->d:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 49
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Lcom/facebook/orca/images/UrlImage;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    const-string v1, "imageData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 53
    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v3, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v2

    invoke-static {p0, v7}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v2

    invoke-static {p0, v7}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->e:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0
.end method
