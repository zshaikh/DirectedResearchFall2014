.class public Lcom/dolphin/browser/ui/launcher/FolderIcon;
.super Lcom/dolphin/browser/launcher/FolderIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->setWillNotDraw(Z)V

    .line 39
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 76
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->updateTheme()V

    .line 45
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->s()V

    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->d()V

    .line 51
    return-void
.end method

.method public updateTheme()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    check-cast v0, Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/Folder;->u()V

    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->d()V

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/FolderIcon;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/widget/TextView;)V

    .line 58
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/FolderIcon;->g:Landroid/graphics/Paint;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/FolderIcon;->invalidate()V

    .line 64
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/FolderIcon;->g:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method
