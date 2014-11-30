.class public Lcom/playhaven/resources/PHImageResource;
.super Lcom/playhaven/resources/PHResource;
.source "PHImageResource.java"


# instance fields
.field private cached_images:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private data_map:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected densityType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/playhaven/resources/PHResource;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHImageResource;->cached_images:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/Hashtable;

    .line 26
    const/16 v0, 0xa0

    iput v0, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    .line 18
    return-void
.end method

.method private getClosestImage(I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "requestedDensity"    # I

    .prologue
    const/4 v8, 0x0

    .line 63
    iget-object v6, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v8

    .line 86
    :goto_0
    return-object v6

    .line 66
    :cond_0
    const v5, 0x7fffffff

    .line 67
    .local v5, "minDiff":I
    const/16 v1, 0xa0

    .line 69
    .local v1, "closestDensity":I
    iget-object v6, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 78
    invoke-virtual {p0, v1}, Lcom/playhaven/resources/PHImageResource;->getData(I)[B

    move-result-object v0

    .line 80
    .local v0, "buffer":[B
    if-nez v0, :cond_3

    move-object v6, v8

    goto :goto_0

    .line 69
    .end local v0    # "buffer":[B
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 70
    .local v3, "density":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 72
    .local v4, "diff":I
    if-ge v4, v5, :cond_1

    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    move v5, v4

    goto :goto_1

    .line 82
    .end local v3    # "density":Ljava/lang/Integer;
    .end local v4    # "diff":I
    .restart local v0    # "buffer":[B
    :cond_3
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    .local v2, "closestImage":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 84
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_4
    move-object v6, v2

    .line 86
    goto :goto_0
.end method

.method private loadImage()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/playhaven/resources/PHImageResource;->cached_images:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 93
    .local v0, "cached_image":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 94
    iget v1, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    invoke-direct {p0, v1}, Lcom/playhaven/resources/PHImageResource;->getClosestImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "You have not specified image data for the requested density or the image data is invalid"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/playhaven/resources/PHImageResource;->cached_images:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must use getData(density) when loading images"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData(I)[B
    .locals 3
    .param p1, "density"    # I

    .prologue
    .line 30
    iget-object v1, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "dataStr":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method public loadImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "densityType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 108
    iput p1, p0, Lcom/playhaven/resources/PHImageResource;->densityType:I

    .line 109
    invoke-direct {p0}, Lcom/playhaven/resources/PHImageResource;->loadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setDataStr(ILjava/lang/String;)V
    .locals 2
    .param p1, "density"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/playhaven/resources/PHImageResource;->data_map:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method

.method public setDataStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must use setDataStr(density, data) when setting image data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataStr([ILjava/lang/String;)V
    .locals 3
    .param p1, "densities"    # [I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 45
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 48
    return-void

    .line 45
    :cond_0
    aget v0, p1, v2

    .line 46
    .local v0, "density":I
    invoke-virtual {p0, v0, p2}, Lcom/playhaven/resources/PHImageResource;->setDataStr(ILjava/lang/String;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
