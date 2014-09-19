.class public Lv2/com/playhaven/views/interstitial/PHCloseButton;
.super Landroid/widget/ImageButton;
.source "PHCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;,
        Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;
    }
.end annotation


# instance fields
.field private listener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v2, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton;->listener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;

    .line 49
    const-string v1, "closeButton"

    invoke-virtual {p0, v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    invoke-virtual {p0, v2}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-direct {p0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->loadDefaultStateImages()V

    .line 58
    iput-object p2, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton;->listener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;

    .line 60
    move-object v0, p2

    .line 63
    .local v0, finalListener:Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;
    new-instance v1, Lv2/com/playhaven/views/interstitial/PHCloseButton$1;

    invoke-direct {v1, p0, v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton$1;-><init>(Lv2/com/playhaven/views/interstitial/PHCloseButton;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;)V

    invoke-virtual {p0, v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "customActive"
    .parameter "customInactive"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lv2/com/playhaven/views/interstitial/PHCloseButton;-><init>(Landroid/content/Context;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;)V

    .line 86
    invoke-direct {p0, p3, p4}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setActiveAndInactive(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 87
    return-void
.end method

.method private loadDefaultStateImages()V
    .locals 8

    .prologue
    .line 94
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 96
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lv2/com/playhaven/resources/PHResourceManager;->sharedResourceManager()Lv2/com/playhaven/resources/PHResourceManager;

    move-result-object v5

    .line 100
    .local v5, rm:Lv2/com/playhaven/resources/PHResourceManager;
    const-string v6, "close_inactive"

    invoke-virtual {v5, v6}, Lv2/com/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lv2/com/playhaven/resources/types/PHResource;

    move-result-object v4

    check-cast v4, Lv2/com/playhaven/resources/data/PHCloseImageResource;

    .line 102
    .local v4, inactiveRes:Lv2/com/playhaven/resources/data/PHCloseImageResource;
    const-string v6, "close_active"

    invoke-virtual {v5, v6}, Lv2/com/playhaven/resources/PHResourceManager;->getResource(Ljava/lang/String;)Lv2/com/playhaven/resources/types/PHResource;

    move-result-object v1

    check-cast v1, Lv2/com/playhaven/resources/data/PHCloseActiveImageResource;

    .line 104
    .local v1, active_res:Lv2/com/playhaven/resources/data/PHCloseActiveImageResource;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v7}, Lv2/com/playhaven/resources/data/PHCloseImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    .local v3, inactive:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v7}, Lv2/com/playhaven/resources/data/PHCloseActiveImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 108
    .local v0, active:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {p0, v0, v3}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setActiveAndInactive(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 109
    return-void
.end method

.method private setActiveAndInactive(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 5
    .parameter "active"
    .parameter "inactive"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 116
    .local v0, states:Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v4, [I

    sget-object v2, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v2}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->getAndroidState()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 118
    new-array v1, v4, [I

    sget-object v2, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v2}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->getAndroidState()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method
