.class public Lorg/a/a/v;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 15
    invoke-static {p1}, Lorg/a/a/i;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    .line 23
    iput p2, p0, Lorg/a/a/v;->b:I

    .line 24
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/a/a/bx;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    check-cast v0, Lorg/a/a/bx;

    invoke-virtual {v0, p1}, Lorg/a/a/bx;->a(Z)V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/a/a/ar;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    iget-object v2, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 120
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-direct {p0, v0}, Lorg/a/a/v;->a(Z)V

    .line 133
    iget-object v3, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    invoke-static {v3, v2}, Lorg/a/a/i;->a(Ljava/io/InputStream;I)I

    move-result v3

    .line 135
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_1

    move v0, v1

    .line 140
    :cond_1
    iget-object v4, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    iget v5, p0, Lorg/a/a/v;->b:I

    invoke-static {v4, v5}, Lorg/a/a/i;->b(Ljava/io/InputStream;I)I

    move-result v4

    .line 142
    if-gez v4, :cond_5

    .line 144
    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    new-instance v0, Lorg/a/a/bx;

    iget-object v4, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    iget v5, p0, Lorg/a/a/v;->b:I

    invoke-direct {v0, v4, v5}, Lorg/a/a/bx;-><init>(Ljava/io/InputStream;I)V

    .line 150
    new-instance v4, Lorg/a/a/v;

    iget v5, p0, Lorg/a/a/v;->b:I

    invoke-direct {v4, v0, v5}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;I)V

    .line 152
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Lorg/a/a/ab;

    invoke-direct {v0, v3, v4}, Lorg/a/a/ab;-><init>(ILorg/a/a/v;)V

    goto :goto_0

    .line 157
    :cond_3
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_4

    .line 159
    new-instance v0, Lorg/a/a/al;

    invoke-direct {v0, v1, v3, v4}, Lorg/a/a/al;-><init>(ZILorg/a/a/v;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {v4, v3}, Lorg/a/a/v;->a(I)Lorg/a/a/ar;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_5
    new-instance v5, Lorg/a/a/bv;

    iget-object v6, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    invoke-direct {v5, v6, v4}, Lorg/a/a/bv;-><init>(Ljava/io/InputStream;I)V

    .line 168
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_6

    .line 170
    new-instance v1, Lorg/a/a/an;

    invoke-virtual {v5}, Lorg/a/a/bv;->b()[B

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lorg/a/a/an;-><init>(ZI[B)V

    move-object v0, v1

    goto :goto_0

    .line 173
    :cond_6
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 175
    new-instance v1, Lorg/a/a/al;

    new-instance v2, Lorg/a/a/v;

    invoke-direct {v2, v5}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v3, v2}, Lorg/a/a/al;-><init>(ZILorg/a/a/v;)V

    move-object v0, v1

    goto :goto_0

    .line 178
    :cond_7
    if-eqz v0, :cond_8

    .line 181
    sparse-switch v3, :sswitch_data_0

    .line 196
    new-instance v0, Lorg/a/a/bt;

    invoke-virtual {v5}, Lorg/a/a/bv;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lorg/a/a/bt;-><init>(ZI[B)V

    goto :goto_0

    .line 187
    :sswitch_0
    new-instance v0, Lorg/a/a/ae;

    new-instance v1, Lorg/a/a/v;

    invoke-direct {v1, v5}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/a/a/ae;-><init>(Lorg/a/a/v;)V

    goto/16 :goto_0

    .line 189
    :sswitch_1
    new-instance v0, Lorg/a/a/bk;

    new-instance v1, Lorg/a/a/v;

    invoke-direct {v1, v5}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/a/a/bk;-><init>(Lorg/a/a/v;)V

    goto/16 :goto_0

    .line 191
    :sswitch_2
    new-instance v0, Lorg/a/a/bm;

    new-instance v1, Lorg/a/a/v;

    invoke-direct {v1, v5}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/a/a/bm;-><init>(Lorg/a/a/v;)V

    goto/16 :goto_0

    .line 193
    :sswitch_3
    new-instance v0, Lorg/a/a/av;

    new-instance v1, Lorg/a/a/v;

    invoke-direct {v1, v5}, Lorg/a/a/v;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/a/a/av;-><init>(Lorg/a/a/v;)V

    goto/16 :goto_0

    .line 201
    :cond_8
    packed-switch v3, :pswitch_data_0

    .line 209
    :try_start_0
    invoke-virtual {v5}, Lorg/a/a/bv;->b()[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/a/a/i;->a(I[B)Lorg/a/a/bd;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :pswitch_0
    new-instance v0, Lorg/a/a/bg;

    invoke-direct {v0, v5}, Lorg/a/a/bg;-><init>(Lorg/a/a/bv;)V

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Lorg/a/a/g;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch

    .line 201
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method a(I)Lorg/a/a/ar;
    .locals 3

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 48
    new-instance v0, Lorg/a/a/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :sswitch_0
    new-instance v0, Lorg/a/a/av;

    invoke-direct {v0, p0}, Lorg/a/a/av;-><init>(Lorg/a/a/v;)V

    .line 46
    :goto_0
    return-object v0

    .line 42
    :sswitch_1
    new-instance v0, Lorg/a/a/ae;

    invoke-direct {v0, p0}, Lorg/a/a/ae;-><init>(Lorg/a/a/v;)V

    goto :goto_0

    .line 44
    :sswitch_2
    new-instance v0, Lorg/a/a/ah;

    invoke-direct {v0, p0}, Lorg/a/a/ah;-><init>(Lorg/a/a/v;)V

    goto :goto_0

    .line 46
    :sswitch_3
    new-instance v0, Lorg/a/a/aj;

    invoke-direct {v0, p0}, Lorg/a/a/aj;-><init>(Lorg/a/a/v;)V

    goto :goto_0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method a(ZI)Lorg/a/a/bd;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    check-cast v0, Lorg/a/a/bv;

    .line 99
    new-instance v1, Lorg/a/a/bp;

    new-instance v2, Lorg/a/a/bf;

    invoke-virtual {v0}, Lorg/a/a/bv;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/a/a/bf;-><init>([B)V

    invoke-direct {v1, v3, p2, v2}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    move-object v0, v1

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/a/a/v;->b()Lorg/a/a/e;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lorg/a/a/v;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/a/a/bx;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v1}, Lorg/a/a/e;->a()I

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Lorg/a/a/ak;

    invoke-virtual {v1, v3}, Lorg/a/a/e;->a(I)Lorg/a/a/ar;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Lorg/a/a/ak;-><init>(ZILorg/a/a/ar;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/a/a/ak;

    invoke-static {v1}, Lorg/a/a/ad;->a(Lorg/a/a/e;)Lorg/a/a/ag;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Lorg/a/a/ak;-><init>(ZILorg/a/a/ar;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v1}, Lorg/a/a/e;->a()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Lorg/a/a/bp;

    invoke-virtual {v1, v3}, Lorg/a/a/e;->a(I)Lorg/a/a/ar;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/a/a/bp;

    invoke-static {v1}, Lorg/a/a/aw;->a(Lorg/a/a/e;)Lorg/a/a/bj;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    goto :goto_0
.end method

.method b()Lorg/a/a/e;
    .locals 3

    .prologue
    .line 228
    new-instance v1, Lorg/a/a/e;

    invoke-direct {v1}, Lorg/a/a/e;-><init>()V

    .line 231
    :goto_0
    invoke-virtual {p0}, Lorg/a/a/v;->a()Lorg/a/a/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    instance-of v2, v0, Lorg/a/a/bw;

    if-eqz v2, :cond_0

    .line 235
    check-cast v0, Lorg/a/a/bw;

    invoke-interface {v0}, Lorg/a/a/bw;->g()Lorg/a/a/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/a/a/e;->a(Lorg/a/a/ar;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v0}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/a/a/e;->a(Lorg/a/a/ar;)V

    goto :goto_0

    .line 243
    :cond_1
    return-object v1
.end method
