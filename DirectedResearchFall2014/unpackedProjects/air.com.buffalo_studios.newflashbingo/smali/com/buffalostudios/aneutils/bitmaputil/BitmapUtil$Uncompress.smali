.class public Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Uncompress;
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
    name = "Uncompress"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUncompressedSize(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 133
    const/4 v0, 0x4

    .line 134
    .local v0, "sizePixel":I
    mul-int v2, p1, p2

    mul-int v1, v2, v0

    .line 135
    .local v1, "sizeUncompressed":I
    return v1
.end method

.method private native uncompress(Ljava/nio/ByteBuffer;[I[ILjava/nio/ByteBuffer;)I
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 103
    aget-object v7, p2, v9

    invoke-static {v7, v8}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asByteBuffer(Lcom/adobe/fre/FREObject;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    .local v0, "compressedData":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 108
    .local v5, "imageWidth":I
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 111
    .local v3, "imageHeight":I
    invoke-direct {p0, v5, v3}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Uncompress;->getUncompressedSize(II)I

    move-result v6

    .line 112
    .local v6, "uncompressedSize":I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 115
    .local v4, "imagePixels":Ljava/nio/ByteBuffer;
    new-array v2, v8, [I

    .line 116
    .local v2, "dummyWidth":[I
    new-array v1, v8, [I

    .line 117
    .local v1, "dummyHeight":[I
    invoke-direct {p0, v0, v2, v1, v4}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Uncompress;->uncompress(Ljava/nio/ByteBuffer;[I[ILjava/nio/ByteBuffer;)I

    move-result v6

    .line 118
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 119
    const/4 v7, 0x0

    .line 129
    :goto_0
    return-object v7

    .line 123
    :cond_0
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 125
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 129
    :cond_1
    invoke-static {v5, v3, v8, v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->newFREBitmapData(IIZLjava/nio/ByteBuffer;)Lcom/adobe/fre/FREBitmapData;

    move-result-object v7

    goto :goto_0
.end method
