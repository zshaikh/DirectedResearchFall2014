.class public Lv2/com/playhaven/resources/types/PHNinePatchResource;
.super Lv2/com/playhaven/resources/types/PHImageResource;
.source "PHNinePatchResource.java"


# instance fields
.field private nine_patch_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lv2/com/playhaven/resources/types/PHImageResource;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/resources/types/PHNinePatchResource;->nine_patch_cache:Ljava/util/HashMap;

    return-void
.end method

.method private loadNinePatch()Landroid/graphics/NinePatch;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 28
    iget-object v3, p0, Lv2/com/playhaven/resources/types/PHNinePatchResource;->nine_patch_cache:Ljava/util/HashMap;

    iget v4, p0, Lv2/com/playhaven/resources/types/PHNinePatchResource;->densityType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/NinePatch;

    .line 30
    .local v0, cachedNinePatch:Landroid/graphics/NinePatch;
    if-nez v0, :cond_1

    .line 32
    iget v3, p0, Lv2/com/playhaven/resources/types/PHNinePatchResource;->densityType:I

    invoke-super {p0, v3}, Lv2/com/playhaven/resources/types/PHImageResource;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 35
    .local v2, image:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 37
    .local v1, chunk:[B
    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 45
    .end local v1           #chunk:[B
    .end local v2           #image:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 40
    .restart local v1       #chunk:[B
    .restart local v2       #image:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Landroid/graphics/NinePatch;

    .end local v0           #cachedNinePatch:Landroid/graphics/NinePatch;
    invoke-direct {v0, v2, v1, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 42
    .restart local v0       #cachedNinePatch:Landroid/graphics/NinePatch;
    iget-object v3, p0, Lv2/com/playhaven/resources/types/PHNinePatchResource;->nine_patch_cache:Ljava/util/HashMap;

    iget v4, p0, Lv2/com/playhaven/resources/types/PHNinePatchResource;->densityType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #chunk:[B
    .end local v2           #image:Landroid/graphics/Bitmap;
    :cond_1
    move-object v3, v0

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public loadNinePatch(I)Landroid/graphics/NinePatch;
    .locals 1
    .parameter "densityType"

    .prologue
    .line 22
    iput p1, p0, Lv2/com/playhaven/resources/types/PHImageResource;->densityType:I

    .line 23
    invoke-direct {p0}, Lv2/com/playhaven/resources/types/PHNinePatchResource;->loadNinePatch()Landroid/graphics/NinePatch;

    move-result-object v0

    return-object v0
.end method

.method public loadNinePatchDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2
    .parameter "res"
    .parameter "densityType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0, p2}, Lv2/com/playhaven/resources/types/PHNinePatchResource;->loadNinePatch(I)Landroid/graphics/NinePatch;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    return-object v0
.end method
