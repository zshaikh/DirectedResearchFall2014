.class Lcom/dolphin/browser/gesture/ui/p;
.super Landroid/widget/ArrayAdapter;
.source "GestureCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 495
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/p;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/p;->b:Ljava/util/Map;

    .line 498
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/p;->remove(Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/p;->b:Ljava/util/Map;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/p;->add(Ljava/lang/Object;)V

    .line 504
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    check-cast p2, Lcom/dolphin/browser/gesture/ui/BorderImageView;

    .line 516
    if-nez p2, :cond_0

    .line 517
    new-instance p2, Lcom/dolphin/browser/gesture/ui/BorderImageView;

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;-><init>(Landroid/content/Context;)V

    .line 520
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->setTag(Ljava/lang/Object;)V

    .line 523
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/p;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020145

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    rem-int/lit8 v0, p1, 0x5

    if-nez v0, :cond_2

    .line 527
    invoke-virtual {p2, v3}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->a(Z)V

    .line 531
    :goto_0
    rem-int/lit8 v0, p1, 0x5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 532
    invoke-virtual {p2, v3}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->d(Z)V

    .line 536
    :goto_1
    if-ge p1, v1, :cond_4

    .line 537
    invoke-virtual {p2, v3}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b(Z)V

    .line 541
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/p;->getCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    .line 542
    if-nez v0, :cond_1

    move v0, v1

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/p;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    if-lt p1, v0, :cond_5

    .line 546
    invoke-virtual {p2, v3}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->c(Z)V

    .line 550
    :goto_3
    return-object p2

    .line 529
    :cond_2
    invoke-virtual {p2, v4}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->a(Z)V

    goto :goto_0

    .line 534
    :cond_3
    invoke-virtual {p2, v4}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->d(Z)V

    goto :goto_1

    .line 539
    :cond_4
    invoke-virtual {p2, v4}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b(Z)V

    goto :goto_2

    .line 548
    :cond_5
    invoke-virtual {p2, v4}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->c(Z)V

    goto :goto_3
.end method
