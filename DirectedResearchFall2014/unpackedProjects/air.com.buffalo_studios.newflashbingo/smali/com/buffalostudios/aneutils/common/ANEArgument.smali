.class public Lcom/buffalostudios/aneutils/common/ANEArgument;
.super Ljava/lang/Object;
.source "ANEArgument.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteBuffer(Lcom/adobe/fre/FREObject;Z)Ljava/nio/ByteBuffer;
    .locals 10
    .parameter "arg"
    .parameter "directBuffer"

    .prologue
    const/4 v9, 0x0

    .line 14
    const-string v3, "ANEArgument.asByteBuffer"

    .line 16
    .local v3, methodName:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v7, v9

    .line 52
    :goto_0
    return-object v7

    .line 20
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    move-object v2, v0

    .line 22
    .local v2, freByteArray:Lcom/adobe/fre/FREByteArray;
    const/4 v5, 0x0

    .line 23
    .local v5, srcLength:I
    const/4 v4, 0x0

    .line 26
    .local v4, srcBytes:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 27
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v7

    long-to-int v5, v7

    .line 28
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 29
    .local v6, tempBuffer:Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->release()V

    .line 32
    if-eqz p1, :cond_2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-nez v7, :cond_2

    .line 33
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 34
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 38
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    .end local v6           #tempBuffer:Ljava/nio/ByteBuffer;
    :goto_2
    if-eqz v5, :cond_1

    if-nez v4, :cond_3

    .line 48
    :cond_1
    const-string v7, "ERROR: Failed to get argument in ANEArgument.asByteBuffer"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v7, v9

    .line 49
    goto :goto_0

    .line 36
    .restart local v6       #tempBuffer:Ljava/nio/ByteBuffer;
    :cond_2
    move-object v4, v6

    goto :goto_1

    .line 39
    .end local v6           #tempBuffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 40
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v7, "ERROR: IllegalStateException in ANEArgument.asByteBuffer"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_2

    .line 41
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 42
    .local v1, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v7, "ERROR: FREInvalidObjectException in ANEArgument.asByteBuffer"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    .end local v1           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 44
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v7, "ERROR: FREWrongThreadException in ANEArgument.asByteBuffer"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #e:Lcom/adobe/fre/FREWrongThreadException;
    :cond_3
    move-object v7, v4

    .line 52
    goto :goto_0
.end method

.method public static asBytes(Lcom/adobe/fre/FREObject;)[B
    .locals 10
    .parameter "arg"

    .prologue
    const/4 v9, 0x0

    .line 56
    const-string v4, "ANEArgument.asBytes"

    .line 58
    .local v4, methodName:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v7, v9

    .line 88
    :goto_0
    return-object v7

    .line 62
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    move-object v3, v0

    .line 64
    .local v3, freByteArray:Lcom/adobe/fre/FREByteArray;
    const/4 v6, 0x0

    .line 65
    .local v6, srcLength:I
    const/4 v5, 0x0

    .line 68
    .local v5, srcBytes:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v3}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 69
    invoke-virtual {v3}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v7

    long-to-int v6, v7

    .line 70
    invoke-virtual {v3}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 71
    invoke-virtual {v3}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :goto_1
    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    .line 81
    :cond_1
    const-string v7, "ERROR: Failed to get argument in ANEArgument.asBytes"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v7, v9

    .line 82
    goto :goto_0

    .line 72
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 73
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v7, "ERROR: IllegalStateException in ANEArgument.asBytes"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 75
    .local v2, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v7, "ERROR: FREInvalidObjectException in ANEArgument.asBytes"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v2           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 77
    .local v2, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v7, "ERROR: FREWrongThreadException in ANEArgument.asBytes"

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    .end local v2           #e:Lcom/adobe/fre/FREWrongThreadException;
    :cond_2
    new-array v1, v6, [B

    .line 86
    .local v1, bytes:[B
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v7, v1

    .line 88
    goto :goto_0
.end method

.method public static asInt(Lcom/adobe/fre/FREObject;)I
    .locals 4
    .parameter "arg"

    .prologue
    .line 129
    const-string v1, "ANEArgument.asInt"

    .line 132
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .local v2, value:I
    move v3, v2

    .line 145
    .end local v2           #value:I
    :goto_0
    return v3

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "ERROR: IllegalStateException in ANEArgument.asInt"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 144
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const-string v3, "ERROR: Failed to get argument in ANEArgument.asInt"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 145
    const/4 v3, 0x0

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 137
    .local v0, e:Lcom/adobe/fre/FRETypeMismatchException;
    const-string v3, "ERROR: FRETypeMismatchException in ANEArgument.asInt"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v0           #e:Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v0

    .line 139
    .local v0, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v3, "ERROR: FREInvalidObjectException in ANEArgument.asInt"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v0           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v0

    .line 141
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v3, "ERROR: FREWrongThreadException in ANEArgument.asInt"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static asInts(Lcom/adobe/fre/FREObject;)[I
    .locals 11
    .parameter "arg"

    .prologue
    const/4 v10, 0x0

    .line 92
    const-string v4, "ANEArgument.asInts"

    .line 94
    .local v4, methodName:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v8, v10

    .line 125
    :goto_0
    return-object v8

    .line 98
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    move-object v2, v0

    .line 100
    .local v2, freByteArray:Lcom/adobe/fre/FREByteArray;
    const/4 v7, 0x0

    .line 101
    .local v7, srcLength:I
    const/4 v5, 0x0

    .line 104
    .local v5, srcBytes:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 105
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v8

    long-to-int v7, v8

    .line 106
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 107
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    :goto_1
    if-eqz v7, :cond_1

    if-nez v5, :cond_2

    .line 117
    :cond_1
    const-string v8, "ERROR: Failed to get argument in ANEArgument.asInts"

    invoke-static {v8}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    move-object v8, v10

    .line 118
    goto :goto_0

    .line 108
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 109
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v8, "ERROR: IllegalStateException in ANEArgument.asInts"

    invoke-static {v8}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 111
    .local v1, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v8, "ERROR: FREInvalidObjectException in ANEArgument.asInts"

    invoke-static {v8}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v1           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 113
    .local v1, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v8, "ERROR: FREWrongThreadException in ANEArgument.asInts"

    invoke-static {v8}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v1           #e:Lcom/adobe/fre/FREWrongThreadException;
    :cond_2
    div-int/lit8 v8, v7, 0x4

    new-array v3, v8, [I

    .line 122
    .local v3, ints:[I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 123
    .local v6, srcInts:Ljava/nio/IntBuffer;
    invoke-virtual {v6, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    move-object v8, v3

    .line 125
    goto :goto_0
.end method

.method public static asString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 4
    .parameter "arg"

    .prologue
    .line 149
    const-string v1, "ANEArgument.asString"

    .line 152
    .local v1, methodName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    move-object v3, v2

    .line 165
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "ERROR: IllegalStateException in ANEArgument.asString"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 164
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const-string v3, "ERROR: Failed to get argument in ANEArgument.asString"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    .line 165
    const/4 v3, 0x0

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, e:Lcom/adobe/fre/FRETypeMismatchException;
    const-string v3, "ERROR: FRETypeMismatchException in ANEArgument.asString"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v0           #e:Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v3, "ERROR: FREInvalidObjectException in ANEArgument.asString"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v0           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v3, "ERROR: FREWrongThreadException in ANEArgument.asString"

    invoke-static {v3}, Lcom/buffalostudios/aneutils/common/ANEHelper;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method
