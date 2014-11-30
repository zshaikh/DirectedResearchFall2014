.class public Lcom/dolphin/browser/bookmark/b/c;
.super Lcom/dolphin/browser/bookmark/b/a;
.source "BookmarkItemView.java"


# instance fields
.field private j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/b/a;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060015

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/c;->f:I

    .line 24
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a016b

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/c;->h:I

    .line 25
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201ed

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/c;->i:I

    .line 27
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/c;->a()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/c;->j:Landroid/graphics/Bitmap;

    .line 38
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmark/b/a;->e(Z)V

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/c;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    return-void
.end method
