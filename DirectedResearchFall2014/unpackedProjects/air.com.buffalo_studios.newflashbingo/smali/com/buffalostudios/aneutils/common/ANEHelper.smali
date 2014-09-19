.class public Lcom/buffalostudios/aneutils/common/ANEHelper;
.super Ljava/lang/Object;
.source "ANEHelper.java"


# static fields
.field private static final NO_ERROR:Ljava/lang/String; = "NO_ERROR"

.field private static _errorMsg:Ljava/lang/String;

.field private static _isError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "NO_ERROR"

    sput-object v0, Lcom/buffalostudios/aneutils/common/ANEHelper;->_errorMsg:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buffalostudios/aneutils/common/ANEHelper;->_isError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/buffalostudios/aneutils/common/ANEHelper;->_errorMsg:Ljava/lang/String;

    .line 23
    .local v0, retValue:Ljava/lang/String;
    const-string v1, "NO_ERROR"

    sput-object v1, Lcom/buffalostudios/aneutils/common/ANEHelper;->_errorMsg:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    sput-boolean v1, Lcom/buffalostudios/aneutils/common/ANEHelper;->_isError:Z

    .line 26
    return-object v0
.end method

.method public static getFREBitmapDataHeight(Lcom/adobe/fre/FREBitmapData;)I
    .locals 4
    .parameter "freBitmapData"

    .prologue
    .line 62
    const-string v2, "ANEHelper.getFREBitmapDataHeight"

    .line 66
    .local v2, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 67
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v1

    .line 68
    .local v1, height:I
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v1

    .line 82
    .end local v1           #height:I
    :goto_0
    return v3

    .line 73
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 74
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "ERROR: IllegalStateException in ANEHelper.getFREBitmapDataHeight"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 81
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const-string v3, "ERROR: Failed to get height in ANEHelper.getFREBitmapDataHeight"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 82
    const/4 v3, 0x0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v3, "ERROR: FREInvalidObjectException in ANEHelper.getFREBitmapDataHeight"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .end local v0           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 78
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v3, "ERROR: FREWrongThreadException in ANEHelper.getFREBitmapDataHeight"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getFREBitmapDataPixels(Lcom/adobe/fre/FREBitmapData;Z)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "freBitmapData"
    .parameter "directBuffer"

    .prologue
    .line 86
    const-string v1, "ANEHelper.getFREBitmapDataPixels"

    .line 90
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 91
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 92
    .local v3, tempBuffer:Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V

    .line 95
    const/4 v2, 0x0

    .line 100
    .local v2, pixelBuffer:Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 106
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v2

    .line 120
    .end local v2           #pixelBuffer:Ljava/nio/ByteBuffer;
    .end local v3           #tempBuffer:Ljava/nio/ByteBuffer;
    :goto_1
    return-object v4

    .line 104
    .restart local v2       #pixelBuffer:Ljava/nio/ByteBuffer;
    .restart local v3       #tempBuffer:Ljava/nio/ByteBuffer;
    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 111
    .end local v2           #pixelBuffer:Ljava/nio/ByteBuffer;
    .end local v3           #tempBuffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 112
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "ERROR: IllegalStateException in ANEHelper.getFREBitmapDataPixels"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 119
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_2
    const-string v4, "ERROR: Failed to get pixels in ANEHelper.getFREBitmapDataPixels"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x0

    goto :goto_1

    .line 113
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 114
    .local v0, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v4, "ERROR: FREInvalidObjectException in ANEHelper.getFREBitmapDataPixels"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    .end local v0           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 116
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR: FREWrongThreadException in ANEHelper.getFREBitmapDataPixels"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getFREBitmapDataWidth(Lcom/adobe/fre/FREBitmapData;)I
    .locals 4
    .parameter "freBitmapData"

    .prologue
    .line 38
    const-string v1, "ANEHelper.getFREBitmapDataWidth"

    .line 42
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 43
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v2

    .line 44
    .local v2, width:I
    invoke-virtual {p0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v2

    .line 58
    .end local v2           #width:I
    :goto_0
    return v3

    .line 49
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 50
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "ERROR: IllegalStateException in ANEHelper.getFREBitmapDataWidth"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 57
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const-string v3, "ERROR: Failed to get width in ANEHelper.getFREBitmapDataWidth"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 58
    const/4 v3, 0x0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 52
    .local v0, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v3, "ERROR: FREInvalidObjectException in ANEHelper.getFREBitmapDataWidth"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    .end local v0           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 54
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v3, "ERROR: FREWrongThreadException in ANEHelper.getFREBitmapDataWidth"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newFREBitmapData(IIZLjava/nio/ByteBuffer;)Lcom/adobe/fre/FREBitmapData;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "transparent"
    .parameter "pixels"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 166
    const-string v4, "ANEHelper.newFREBitmapData"

    .line 168
    .local v4, methodName:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 169
    const-string v5, "ERROR: Invalid argument in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v5, v8

    .line 202
    :goto_0
    return-object v5

    .line 173
    :cond_0
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/Byte;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v2, v5

    .line 177
    .local v2, fillColor:[Ljava/lang/Byte;
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;

    move-result-object v3

    .line 180
    .local v3, freBitmapData:Lcom/adobe/fre/FREBitmapData;
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 181
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    .local v0, bitmapBits:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 183
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v3

    .line 187
    goto :goto_0

    .line 189
    .end local v0           #bitmapBits:Ljava/nio/ByteBuffer;
    .end local v3           #freBitmapData:Lcom/adobe/fre/FREBitmapData;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 190
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "ERROR: IllegalArgumentException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 201
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v5, "ERROR: Failed to create FREBitmapData in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v5, v8

    .line 202
    goto :goto_0

    .line 191
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 192
    .local v1, e:Lcom/adobe/fre/FREASErrorException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR: FREASErrorException in ANEHelper.newFREBitmapData width = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local v1           #e:Lcom/adobe/fre/FREASErrorException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 194
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v5, "ERROR: FREWrongThreadException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v1           #e:Lcom/adobe/fre/FREWrongThreadException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 196
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "ERROR: IllegalStateException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 198
    .local v1, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v5, "ERROR: FREInvalidObjectException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newFREBitmapData(IIZ[BII)Lcom/adobe/fre/FREBitmapData;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "transparent"
    .parameter "pixels"
    .parameter "pixelOffset"
    .parameter "byteCount"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 125
    const-string v4, "ANEHelper.newFREBitmapData"

    .line 127
    .local v4, methodName:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 128
    const-string v5, "ERROR: Invalid argument in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v5, v8

    .line 161
    :goto_0
    return-object v5

    .line 132
    :cond_0
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/Byte;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v2, v5

    .line 136
    .local v2, fillColor:[Ljava/lang/Byte;
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;

    move-result-object v3

    .line 139
    .local v3, freBitmapData:Lcom/adobe/fre/FREBitmapData;
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    .line 140
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    .local v0, bitmapBits:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p3, p4, p5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 142
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v3

    .line 146
    goto :goto_0

    .line 148
    .end local v0           #bitmapBits:Ljava/nio/ByteBuffer;
    .end local v3           #freBitmapData:Lcom/adobe/fre/FREBitmapData;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 149
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "ERROR: IllegalArgumentException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 160
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v5, "ERROR: Failed to create FREBitmapData in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v5, v8

    .line 161
    goto :goto_0

    .line 150
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 151
    .local v1, e:Lcom/adobe/fre/FREASErrorException;
    const-string v5, "ERROR: FREASErrorException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v1           #e:Lcom/adobe/fre/FREASErrorException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 153
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v5, "ERROR: FREWrongThreadException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v1           #e:Lcom/adobe/fre/FREWrongThreadException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 155
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "ERROR: IllegalStateException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 157
    .local v1, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v5, "ERROR: FREInvalidObjectException in ANEHelper.newFREBitmapData"

    invoke-static {v5}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newFREBoolean(Z)Lcom/adobe/fre/FREObject;
    .locals 3
    .parameter "value"

    .prologue
    .line 287
    const-string v1, "ANEHelper.newFREBoolean"

    .line 290
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 296
    :goto_0
    return-object v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v2, "ERROR: FREWrongThreadException in ANEHelper.newFREBoolean"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 295
    const-string v2, "ERROR: Failed to create FREObject in ANEHelper.newFREBoolean"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 296
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFREByteArray(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/adobe/fre/FREByteArray;
    .locals 6
    .parameter "bytes"
    .parameter "endian"

    .prologue
    .line 240
    const-string v3, "ANEHelper.newFREByteArray"

    .line 243
    .local v3, methodName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/adobe/fre/FREByteArray;->newByteArray()Lcom/adobe/fre/FREByteArray;

    move-result-object v2

    .line 244
    .local v2, freObject:Lcom/adobe/fre/FREByteArray;
    const-string v4, "length"

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 245
    const-string v4, "endian"

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 246
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 247
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    .local v0, dstBytes:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/adobe/fre/FREReadOnlyException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v4, v2

    .line 270
    .end local v0           #dstBytes:Ljava/nio/ByteBuffer;
    .end local v2           #freObject:Lcom/adobe/fre/FREByteArray;
    :goto_0
    return-object v4

    .line 253
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 254
    .local v1, e:Lcom/adobe/fre/FREASErrorException;
    const-string v4, "ERROR: FREASErrorException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 269
    .end local v1           #e:Lcom/adobe/fre/FREASErrorException;
    :goto_1
    const-string v4, "ERROR: Failed to create FREByteArray in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 270
    const/4 v4, 0x0

    goto :goto_0

    .line 255
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 256
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR: FREWrongThreadException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    .end local v1           #e:Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 258
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "ERROR: IllegalStateException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 260
    .local v1, e:Lcom/adobe/fre/FRETypeMismatchException;
    const-string v4, "ERROR: FRETypeMismatchException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v1           #e:Lcom/adobe/fre/FRETypeMismatchException;
    :catch_4
    move-exception v4

    move-object v1, v4

    .line 262
    .local v1, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v4, "ERROR: FREInvalidObjectException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    .end local v1           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_5
    move-exception v4

    move-object v1, v4

    .line 264
    .local v1, e:Lcom/adobe/fre/FRENoSuchNameException;
    const-string v4, "ERROR: FRENoSuchNameException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v1           #e:Lcom/adobe/fre/FRENoSuchNameException;
    :catch_6
    move-exception v4

    move-object v1, v4

    .line 266
    .local v1, e:Lcom/adobe/fre/FREReadOnlyException;
    const-string v4, "ERROR: FREReadOnlyException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newFREByteArray([BLjava/lang/String;)Lcom/adobe/fre/FREByteArray;
    .locals 6
    .parameter "bytes"
    .parameter "endian"

    .prologue
    .line 206
    const-string v3, "ANEHelper.newFREByteArray"

    .line 209
    .local v3, methodName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/adobe/fre/FREByteArray;->newByteArray()Lcom/adobe/fre/FREByteArray;

    move-result-object v2

    .line 210
    .local v2, freObject:Lcom/adobe/fre/FREByteArray;
    const-string v4, "length"

    array-length v5, p0

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 211
    const-string v4, "endian"

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 212
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 213
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    .local v0, dstBytes:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/adobe/fre/FREReadOnlyException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v4, v2

    .line 236
    .end local v0           #dstBytes:Ljava/nio/ByteBuffer;
    .end local v2           #freObject:Lcom/adobe/fre/FREByteArray;
    :goto_0
    return-object v4

    .line 219
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 220
    .local v1, e:Lcom/adobe/fre/FREASErrorException;
    const-string v4, "ERROR: FREASErrorException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 235
    .end local v1           #e:Lcom/adobe/fre/FREASErrorException;
    :goto_1
    const-string v4, "ERROR: Failed to create FREByteArray in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 222
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR: FREWrongThreadException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    .end local v1           #e:Lcom/adobe/fre/FREWrongThreadException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 224
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "ERROR: IllegalStateException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 226
    .local v1, e:Lcom/adobe/fre/FRETypeMismatchException;
    const-string v4, "ERROR: FRETypeMismatchException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v1           #e:Lcom/adobe/fre/FRETypeMismatchException;
    :catch_4
    move-exception v4

    move-object v1, v4

    .line 228
    .local v1, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v4, "ERROR: FREInvalidObjectException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v1           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_5
    move-exception v4

    move-object v1, v4

    .line 230
    .local v1, e:Lcom/adobe/fre/FRENoSuchNameException;
    const-string v4, "ERROR: FRENoSuchNameException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    .end local v1           #e:Lcom/adobe/fre/FRENoSuchNameException;
    :catch_6
    move-exception v4

    move-object v1, v4

    .line 232
    .local v1, e:Lcom/adobe/fre/FREReadOnlyException;
    const-string v4, "ERROR: FREReadOnlyException in ANEHelper.newFREByteArray"

    invoke-static {v4}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newFREInt(I)Lcom/adobe/fre/FREObject;
    .locals 3
    .parameter "value"

    .prologue
    .line 274
    const-string v1, "ANEHelper.newFREInt"

    .line 277
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 283
    :goto_0
    return-object v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v2, "ERROR: FREWrongThreadException in ANEHelper.newFREInt"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 282
    const-string v2, "ERROR: Failed to create FREObject in ANEHelper.newFREInt"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFREString(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    .locals 3
    .parameter "value"

    .prologue
    .line 300
    const-string v1, "ANEHelper.newFREString"

    .line 303
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 309
    :goto_0
    return-object v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v2, "ERROR: FREWrongThreadException in ANEHelper.newFREString"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 308
    const-string v2, "ERROR: Failed to create FREObject in ANEHelper.newFREString"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 309
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setError(Ljava/lang/String;)V
    .locals 1
    .parameter "errMsg"

    .prologue
    .line 30
    sget-boolean v0, Lcom/buffalostudios/aneutils/common/ANEHelper;->_isError:Z

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    sput-object p0, Lcom/buffalostudios/aneutils/common/ANEHelper;->_errorMsg:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buffalostudios/aneutils/common/ANEHelper;->_isError:Z

    goto :goto_0
.end method
