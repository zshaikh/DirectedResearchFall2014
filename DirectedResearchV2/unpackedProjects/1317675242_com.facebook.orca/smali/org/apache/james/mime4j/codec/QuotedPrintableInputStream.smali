.class public Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static c:Lorg/apache/commons/logging/Log;


# instance fields
.field a:Lorg/apache/james/mime4j/codec/ByteQueue;

.field b:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private d:Ljava/io/InputStream;

.field private e:B

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private a(B)B
    .locals 4

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 214
    if-lt p1, v1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 215
    sub-int v0, p1, v1

    int-to-byte v0, v0

    .line 219
    :goto_0
    return v0

    .line 216
    :cond_0
    if-lt p1, v2, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 217
    sub-int v0, p1, v2

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 218
    :cond_1
    if-lt p1, v3, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 219
    sub-int v0, p1, v3

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :sswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 89
    sparse-switch v0, :sswitch_data_0

    .line 104
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto :goto_0

    .line 92
    :sswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->c()V

    goto :goto_0

    .line 100
    :sswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->c()V

    .line 101
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 10

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/16 v7, 0xd

    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 119
    move v0, v5

    .line 120
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->b()I

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->b()I

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a()V

    .line 123
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->b()I

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a()B

    move-result v1

    .line 129
    iget-byte v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    packed-switch v2, :pswitch_data_0

    .line 200
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 201
    iput-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    .line 202
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto :goto_0

    .line 131
    :pswitch_0
    if-eq v1, v6, :cond_2

    .line 132
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x1

    iput-byte v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    goto :goto_0

    .line 139
    :pswitch_1
    if-ne v1, v7, :cond_3

    .line 140
    const/4 v1, 0x2

    iput-byte v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    goto :goto_0

    .line 142
    :cond_3
    if-lt v1, v8, :cond_4

    if-le v1, v9, :cond_6

    :cond_4
    const/16 v2, 0x41

    if-lt v1, v2, :cond_5

    const/16 v2, 0x46

    if-le v1, v2, :cond_6

    :cond_5
    const/16 v2, 0x61

    if-lt v1, v2, :cond_7

    const/16 v2, 0x66

    if-gt v1, v2, :cond_7

    .line 143
    :cond_6
    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    move v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_7
    if-ne v1, v6, :cond_9

    .line 151
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    const-string v2, "Malformed MIME; got =="

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 154
    :cond_8
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto/16 :goto_0

    .line 157
    :cond_9
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 161
    :cond_a
    iput-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    .line 162
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 163
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto/16 :goto_0

    .line 167
    :pswitch_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    .line 168
    iput-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    goto/16 :goto_0

    .line 171
    :cond_b
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 172
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed MIME; expected 10, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 175
    :cond_c
    iput-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    .line 176
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 177
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 178
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto/16 :goto_0

    .line 182
    :pswitch_3
    if-lt v1, v8, :cond_d

    if-le v1, v9, :cond_f

    :cond_d
    const/16 v2, 0x41

    if-lt v1, v2, :cond_e

    const/16 v2, 0x46

    if-le v1, v2, :cond_f

    :cond_e
    const/16 v2, 0x61

    if-lt v1, v2, :cond_10

    const/16 v2, 0x66

    if-gt v1, v2, :cond_10

    .line 183
    :cond_f
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a(B)B

    move-result v2

    .line 184
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a(B)B

    move-result v1

    .line 185
    iput-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    .line 186
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto/16 :goto_0

    .line 189
    :cond_10
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 190
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->c:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 193
    :cond_11
    iput-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->e:B

    .line 194
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 195
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    .line 196
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->a(B)V

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->f:Z

    .line 53
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->f:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "QuotedPrintableInputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->b()V

    .line 61
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 62
    const/4 v0, -0x1

    .line 68
    :cond_1
    :goto_0
    return v0

    .line 64
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->a:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->a()B

    move-result v0

    .line 65
    if-gez v0, :cond_1

    .line 68
    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
