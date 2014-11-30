.class public Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:I

.field protected e:[I

.field protected f:[I

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/io/Reader;

.field protected l:[C

.field protected m:I

.field protected n:I

.field protected o:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    .prologue
    .line 276
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    .line 37
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    .line 38
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    .line 40
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->i:Z

    .line 41
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->j:Z

    .line 46
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    .line 47
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->n:I

    .line 48
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->o:I

    .line 263
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->k:Ljava/io/Reader;

    .line 264
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    .line 265
    sub-int v0, p3, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    .line 267
    iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iput p4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    .line 268
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    .line 269
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    .line 270
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    .line 271
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    .prologue
    const/16 v2, 0x800

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 106
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    if-ne v0, v1, :cond_0

    .line 108
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    if-ne v0, v1, :cond_4

    .line 110
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    if-le v0, v2, :cond_2

    .line 112
    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    .line 113
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    .line 130
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->k:Ljava/io/Reader;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 133
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->k:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 134
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    sub-int/2addr v1, v7

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    .line 142
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(I)V

    .line 143
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    if-ne v1, v6, :cond_1

    .line 144
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    .line 145
    :cond_1
    throw v0

    .line 115
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    if-gez v0, :cond_3

    .line 116
    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(Z)V

    goto :goto_0

    .line 120
    :cond_4
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    if-le v0, v1, :cond_5

    .line 121
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    goto :goto_0

    .line 122
    :cond_5
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_6

    .line 123
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(Z)V

    goto :goto_0

    .line 125
    :cond_6
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    goto :goto_0

    .line 137
    :cond_7
    :try_start_1
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    return-void
.end method

.method protected a(C)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    .line 162
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->j:Z

    if-eqz v0, :cond_1

    .line 164
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->j:Z

    .line 165
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    .line 178
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    aput v2, v0, v1

    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    aput v2, v0, v1

    .line 196
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->i:Z

    if-eqz v0, :cond_0

    .line 169
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->i:Z

    .line 170
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 172
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->j:Z

    goto :goto_0

    .line 175
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h:I

    goto :goto_0

    .line 181
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->i:Z

    goto :goto_1

    .line 184
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->j:Z

    goto :goto_1

    .line 187
    :pswitch_3
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    .line 188
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->o:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->o:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g:I

    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->n:I

    .line 256
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    if-gez v0, :cond_0

    .line 257
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    .line 258
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 56
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    add-int/lit16 v0, v0, 0x800

    new-array v0, v0, [C

    .line 57
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    add-int/lit16 v1, v1, 0x800

    new-array v1, v1, [I

    .line 58
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    add-int/lit16 v2, v2, 0x800

    new-array v2, v2, [I

    .line 62
    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    const/4 v1, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    .line 77
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    .line 100
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b:I

    .line 101
    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    .line 102
    return-void

    .line 81
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    .line 87
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    .line 90
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()C
    .locals 2

    .prologue
    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    .line 152
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v0

    .line 153
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    .line 155
    return v0
.end method

.method public b(I)[C
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    new-array v0, p1, [C

    .line 390
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 391
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :goto_0
    return-object v0

    .line 394
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    sub-int v3, p1, v3

    sub-int/2addr v3, v5

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    sub-int v3, p1, v3

    sub-int/2addr v3, v5

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    sub-int v2, p1, v2

    sub-int/2addr v2, v5

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public c()C
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->n:I

    if-lez v0, :cond_1

    .line 202
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->n:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->n:I

    .line 204
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    aget-char v0, v0, v1

    .line 216
    :goto_0
    return v0

    .line 210
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->m:I

    if-lt v0, v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a()V

    .line 213
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    aget-char v0, v0, v1

    .line 215
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(C)V

    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 6

    .prologue
    .line 379
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    if-lt v0, v1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 382
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a:I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->l:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
