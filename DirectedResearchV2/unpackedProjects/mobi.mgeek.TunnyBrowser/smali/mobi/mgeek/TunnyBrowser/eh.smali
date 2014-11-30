.class public Lmobi/mgeek/TunnyBrowser/eh;
.super Lmobi/mgeek/TunnyBrowser/et;
.source "DownloadExtensionAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/et;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 31
    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/TextView;Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 21
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    return-void
.end method
