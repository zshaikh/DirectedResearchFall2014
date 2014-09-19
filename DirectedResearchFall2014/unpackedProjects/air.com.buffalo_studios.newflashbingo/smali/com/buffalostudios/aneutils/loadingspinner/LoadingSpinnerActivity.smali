.class public Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;
.super Landroid/app/Activity;
.source "LoadingSpinnerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Key;,
        Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x7b


# instance fields
.field private _spinner:Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createImage(II[I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "pixels"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 105
    :cond_0
    const/4 v2, 0x0

    .line 110
    :goto_0
    return-object v2

    .line 108
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v1, image:Landroid/graphics/drawable/BitmapDrawable;
    move-object v2, v1

    .line 110
    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;IIIII[I)V
    .locals 2
    .parameter "activity"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "backgroundColor"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imagePixels"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.buffalostudios.aneutils.SCREEN_X"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const-string v1, "com.buffalostudios.aneutils.SCREEN_Y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string v1, "com.buffalostudios.aneutils.BACKGROUND_COLOR"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "com.buffalostudios.aneutils.IMAGE_WIDTH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "com.buffalostudios.aneutils.IMAGE_HEIGHT"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v1, "com.buffalostudios.aneutils.IMAGE_PIXELS"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 55
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method

.method public static stop(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 60
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->finishActivity(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->setContentView(Landroid/view/View;)V

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, screenX:I
    const/4 v7, 0x0

    .line 72
    .local v7, screenY:I
    const/4 v0, 0x0

    .line 73
    .local v0, backgroundColor:I
    const/4 v5, 0x0

    .line 74
    .local v5, imageWidth:I
    const/4 v3, 0x0

    .line 75
    .local v3, imageHeight:I
    const/4 v4, 0x0

    .line 77
    .local v4, imagePixels:[I
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 80
    const-string v9, "com.buffalostudios.aneutils.SCREEN_X"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 81
    const-string v9, "com.buffalostudios.aneutils.SCREEN_Y"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 82
    const-string v9, "com.buffalostudios.aneutils.BACKGROUND_COLOR"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    const-string v9, "com.buffalostudios.aneutils.IMAGE_WIDTH"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 84
    const-string v9, "com.buffalostudios.aneutils.IMAGE_HEIGHT"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    const-string v9, "com.buffalostudios.aneutils.IMAGE_PIXELS"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 89
    :cond_0
    const v9, 0x1020002

    invoke-virtual {p0, v9}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 90
    .local v8, view:Landroid/view/View;
    if-eqz v8, :cond_1

    .line 91
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    :cond_1
    invoke-direct {p0, v5, v3, v4}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->createImage(II[I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    .local v2, image:Landroid/graphics/drawable/Drawable;
    new-instance v9, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;

    invoke-direct {v9, p0, v6, v7, v2}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;-><init>(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;)V

    iput-object v9, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->_spinner:Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;

    .line 100
    iget-object v9, p0, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->_spinner:Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method
