.class public Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Compress;
.super Ljava/lang/Object;
.source "BitmapUtil.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compress"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native compress(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method private getMaxCompressedSize(II)I
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 76
    const/4 v2, 0x4

    .line 78
    .local v2, sizePixel:I
    const/16 v1, 0x8

    .line 79
    .local v1, sizeHeader:I
    mul-int v5, p1, p2

    mul-int v3, v5, v2

    .line 80
    .local v3, sizePixels:I
    add-int v4, v1, v3

    .line 84
    .local v4, sizeUncompressed:I
    mul-int/lit8 v0, v4, 0x2

    .line 86
    .local v0, sizeCompressed:I
    return v0
.end method

.method private native intFromARM(I)I
.end method

.method private native stringFromJNI()Ljava/lang/String;
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .parameter "context"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    .line 45
    aget-object v2, p2, v8

    check-cast v2, Lcom/adobe/fre/FREBitmapData;

    .line 48
    .local v2, freBitmapData:Lcom/adobe/fre/FREBitmapData;
    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->getFREBitmapDataWidth(Lcom/adobe/fre/FREBitmapData;)I

    move-result v5

    .line 49
    .local v5, imageWidth:I
    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->getFREBitmapDataHeight(Lcom/adobe/fre/FREBitmapData;)I

    move-result v3

    .line 50
    .local v3, imageHeight:I
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->getFREBitmapDataPixels(Lcom/adobe/fre/FREBitmapData;Z)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 53
    .local v4, imagePixels:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v5, v3}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Compress;->getMaxCompressedSize(II)I

    move-result v6

    .line 54
    .local v6, maxCompressedSize:I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    .local v0, compressedData:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v5, v3, v4, v0}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Compress;->compress(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 58
    .local v1, compressedSize:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 59
    const/4 v7, 0x0

    .line 69
    :goto_0
    return-object v7

    .line 63
    :cond_0
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 69
    :cond_1
    const-string v7, "littleEndian"

    invoke-static {v0, v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->newFREByteArray(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/adobe/fre/FREByteArray;

    move-result-object v7

    goto :goto_0
.end method
