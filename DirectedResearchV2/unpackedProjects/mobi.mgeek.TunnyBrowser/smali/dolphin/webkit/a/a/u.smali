.class public Ldolphin/webkit/a/a/u;
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
    invoke-static {p1}, Ldolphin/webkit/a/a/h;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    .line 23
    iput p2, p0, Ldolphin/webkit/a/a/u;->b:I

    .line 24
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    instance-of v0, v0, Ldolphin/webkit/a/a/bu;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    check-cast v0, Ldolphin/webkit/a/a/bu;

    invoke-virtual {v0, p1}, Ldolphin/webkit/a/a/bu;->a(Z)V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ldolphin/webkit/a/a/ap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    iget-object v2, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

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
    invoke-direct {p0, v0}, Ldolphin/webkit/a/a/u;->a(Z)V

    .line 133
    iget-object v3, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    invoke-static {v3, v2}, Ldolphin/webkit/a/a/h;->a(Ljava/io/InputStream;I)I

    move-result v3

    .line 135
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_1

    move v0, v1

    .line 140
    :cond_1
    iget-object v4, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    iget v5, p0, Ldolphin/webkit/a/a/u;->b:I

    invoke-static {v4, v5}, Ldolphin/webkit/a/a/h;->b(Ljava/io/InputStream;I)I

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
    new-instance v0, Ldolphin/webkit/a/a/bu;

    iget-object v4, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    iget v5, p0, Ldolphin/webkit/a/a/u;->b:I

    invoke-direct {v0, v4, v5}, Ldolphin/webkit/a/a/bu;-><init>(Ljava/io/InputStream;I)V

    .line 150
    new-instance v4, Ldolphin/webkit/a/a/u;

    iget v5, p0, Ldolphin/webkit/a/a/u;->b:I

    invoke-direct {v4, v0, v5}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;I)V

    .line 152
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Ldolphin/webkit/a/a/z;

    invoke-direct {v0, v3, v4}, Ldolphin/webkit/a/a/z;-><init>(ILdolphin/webkit/a/a/u;)V

    goto :goto_0

    .line 157
    :cond_3
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_4

    .line 159
    new-instance v0, Ldolphin/webkit/a/a/aj;

    invoke-direct {v0, v1, v3, v4}, Ldolphin/webkit/a/a/aj;-><init>(ZILdolphin/webkit/a/a/u;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {v4, v3}, Ldolphin/webkit/a/a/u;->a(I)Ldolphin/webkit/a/a/ap;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_5
    new-instance v5, Ldolphin/webkit/a/a/bs;

    iget-object v6, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    invoke-direct {v5, v6, v4}, Ldolphin/webkit/a/a/bs;-><init>(Ljava/io/InputStream;I)V

    .line 168
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_6

    .line 170
    new-instance v1, Ldolphin/webkit/a/a/al;

    invoke-virtual {v5}, Ldolphin/webkit/a/a/bs;->b()[B

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Ldolphin/webkit/a/a/al;-><init>(ZI[B)V

    move-object v0, v1

    goto :goto_0

    .line 173
    :cond_6
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 175
    new-instance v1, Ldolphin/webkit/a/a/aj;

    new-instance v2, Ldolphin/webkit/a/a/u;

    invoke-direct {v2, v5}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v3, v2}, Ldolphin/webkit/a/a/aj;-><init>(ZILdolphin/webkit/a/a/u;)V

    move-object v0, v1

    goto :goto_0

    .line 178
    :cond_7
    if-eqz v0, :cond_8

    .line 181
    sparse-switch v3, :sswitch_data_0

    .line 196
    new-instance v0, Ldolphin/webkit/a/a/bq;

    invoke-virtual {v5}, Ldolphin/webkit/a/a/bs;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ldolphin/webkit/a/a/bq;-><init>(ZI[B)V

    goto :goto_0

    .line 187
    :sswitch_0
    new-instance v0, Ldolphin/webkit/a/a/ac;

    new-instance v1, Ldolphin/webkit/a/a/u;

    invoke-direct {v1, v5}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/ac;-><init>(Ldolphin/webkit/a/a/u;)V

    goto/16 :goto_0

    .line 189
    :sswitch_1
    new-instance v0, Ldolphin/webkit/a/a/bi;

    new-instance v1, Ldolphin/webkit/a/a/u;

    invoke-direct {v1, v5}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/bi;-><init>(Ldolphin/webkit/a/a/u;)V

    goto/16 :goto_0

    .line 191
    :sswitch_2
    new-instance v0, Ldolphin/webkit/a/a/bk;

    new-instance v1, Ldolphin/webkit/a/a/u;

    invoke-direct {v1, v5}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/bk;-><init>(Ldolphin/webkit/a/a/u;)V

    goto/16 :goto_0

    .line 193
    :sswitch_3
    new-instance v0, Ldolphin/webkit/a/a/at;

    new-instance v1, Ldolphin/webkit/a/a/u;

    invoke-direct {v1, v5}, Ldolphin/webkit/a/a/u;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/at;-><init>(Ldolphin/webkit/a/a/u;)V

    goto/16 :goto_0

    .line 201
    :cond_8
    packed-switch v3, :pswitch_data_0

    .line 209
    :try_start_0
    invoke-virtual {v5}, Ldolphin/webkit/a/a/bs;->b()[B

    move-result-object v0

    invoke-static {v3, v0}, Ldolphin/webkit/a/a/h;->a(I[B)Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :pswitch_0
    new-instance v0, Ldolphin/webkit/a/a/be;

    invoke-direct {v0, v5}, Ldolphin/webkit/a/a/be;-><init>(Ldolphin/webkit/a/a/bs;)V

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Ldolphin/webkit/a/a/f;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method a(I)Ldolphin/webkit/a/a/ap;
    .locals 3

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 48
    new-instance v0, Ldolphin/webkit/a/a/f;

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

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :sswitch_0
    new-instance v0, Ldolphin/webkit/a/a/at;

    invoke-direct {v0, p0}, Ldolphin/webkit/a/a/at;-><init>(Ldolphin/webkit/a/a/u;)V

    .line 46
    :goto_0
    return-object v0

    .line 42
    :sswitch_1
    new-instance v0, Ldolphin/webkit/a/a/ac;

    invoke-direct {v0, p0}, Ldolphin/webkit/a/a/ac;-><init>(Ldolphin/webkit/a/a/u;)V

    goto :goto_0

    .line 44
    :sswitch_2
    new-instance v0, Ldolphin/webkit/a/a/af;

    invoke-direct {v0, p0}, Ldolphin/webkit/a/a/af;-><init>(Ldolphin/webkit/a/a/u;)V

    goto :goto_0

    .line 46
    :sswitch_3
    new-instance v0, Ldolphin/webkit/a/a/ah;

    invoke-direct {v0, p0}, Ldolphin/webkit/a/a/ah;-><init>(Ldolphin/webkit/a/a/u;)V

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

.method a(ZI)Ldolphin/webkit/a/a/bb;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 98
    iget-object v0, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    check-cast v0, Ldolphin/webkit/a/a/bs;

    .line 99
    new-instance v1, Ldolphin/webkit/a/a/bm;

    new-instance v2, Ldolphin/webkit/a/a/bd;

    invoke-virtual {v0}, Ldolphin/webkit/a/a/bs;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ldolphin/webkit/a/a/bd;-><init>([B)V

    invoke-direct {v1, v3, p2, v2}, Ldolphin/webkit/a/a/bm;-><init>(ZILdolphin/webkit/a/a/ap;)V

    move-object v0, v1

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/u;->b()Ldolphin/webkit/a/a/d;

    move-result-object v1

    .line 104
    iget-object v0, p0, Ldolphin/webkit/a/a/u;->a:Ljava/io/InputStream;

    instance-of v0, v0, Ldolphin/webkit/a/a/bu;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v1}, Ldolphin/webkit/a/a/d;->a()I

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Ldolphin/webkit/a/a/ai;

    invoke-virtual {v1, v3}, Ldolphin/webkit/a/a/d;->a(I)Ldolphin/webkit/a/a/ap;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Ldolphin/webkit/a/a/ai;-><init>(ZILdolphin/webkit/a/a/ap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ldolphin/webkit/a/a/ai;

    invoke-static {v1}, Ldolphin/webkit/a/a/ab;->a(Ldolphin/webkit/a/a/d;)Ldolphin/webkit/a/a/ae;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Ldolphin/webkit/a/a/ai;-><init>(ZILdolphin/webkit/a/a/ap;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v1}, Ldolphin/webkit/a/a/d;->a()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Ldolphin/webkit/a/a/bm;

    invoke-virtual {v1, v3}, Ldolphin/webkit/a/a/d;->a(I)Ldolphin/webkit/a/a/ap;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Ldolphin/webkit/a/a/bm;-><init>(ZILdolphin/webkit/a/a/ap;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ldolphin/webkit/a/a/bm;

    invoke-static {v1}, Ldolphin/webkit/a/a/au;->a(Ldolphin/webkit/a/a/d;)Ldolphin/webkit/a/a/bh;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Ldolphin/webkit/a/a/bm;-><init>(ZILdolphin/webkit/a/a/ap;)V

    goto :goto_0
.end method

.method b()Ldolphin/webkit/a/a/d;
    .locals 3

    .prologue
    .line 228
    new-instance v1, Ldolphin/webkit/a/a/d;

    invoke-direct {v1}, Ldolphin/webkit/a/a/d;-><init>()V

    .line 231
    :goto_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/u;->a()Ldolphin/webkit/a/a/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    instance-of v2, v0, Ldolphin/webkit/a/a/bt;

    if-eqz v2, :cond_0

    .line 235
    check-cast v0, Ldolphin/webkit/a/a/bt;

    invoke-interface {v0}, Ldolphin/webkit/a/a/bt;->g()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v0}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    goto :goto_0

    .line 243
    :cond_1
    return-object v1
.end method
