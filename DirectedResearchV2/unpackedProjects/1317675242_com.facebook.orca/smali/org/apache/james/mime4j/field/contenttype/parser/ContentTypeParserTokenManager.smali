.class public Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.super Ljava/lang/Object;
.source "ContentTypeParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field static b:I

.field static final d:[J

.field static final e:[I

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[I

.field static final i:[J

.field static final j:[J

.field static final k:[J

.field static final l:[J


# instance fields
.field public c:Ljava/io/PrintStream;

.field protected m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field n:Ljava/lang/StringBuffer;

.field o:I

.field p:I

.field protected q:C

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field private final x:[I

.field private final y:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    .line 606
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->e:[I

    .line 608
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const-string v1, ";"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->f:[Ljava/lang/String;

    .line 611
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->g:[Ljava/lang/String;

    .line 617
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    .line 620
    new-array v0, v5, [J

    const-wide/32 v1, 0x38003f

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->i:[J

    .line 623
    new-array v0, v5, [J

    const-wide/16 v1, 0x140

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->j:[J

    .line 626
    new-array v0, v5, [J

    const-wide/16 v1, 0x40

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->k:[J

    .line 629
    new-array v0, v5, [J

    const-wide/32 v1, 0x7fe80

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->l:[J

    return-void

    .line 113
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 617
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->c:Ljava/io/PrintStream;

    .line 633
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->x:[I

    .line 634
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    .line 688
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    .line 689
    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->s:I

    .line 642
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 643
    return-void
.end method

.method private final a(II)I
    .locals 1

    .prologue
    .line 49
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 50
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 51
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final a(III)I
    .locals 1

    .prologue
    .line 55
    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 56
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(II)I

    move-result v0

    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final b(II)I
    .locals 12

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    .line 121
    const/4 v1, 0x1

    .line 122
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 123
    const v2, 0x7fffffff

    move v3, p2

    move v11, v0

    move v0, v2

    move v2, v11

    .line 126
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 127
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h()V

    .line 128
    :cond_0
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x40

    if-ge v4, v5, :cond_b

    .line 130
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    shl-long/2addr v4, v6

    .line 133
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_0

    .line 177
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    .line 217
    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 219
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 220
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 221
    const v0, 0x7fffffff

    .line 223
    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 224
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v4, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    sub-int v2, v4, v2

    if-ne v3, v2, :cond_12

    move v0, v1

    .line 227
    :goto_3
    return v0

    .line 136
    :pswitch_0
    const-wide v6, 0x3ff6cfafffffdffL

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 138
    const/16 v6, 0x15

    if-le v0, v6, :cond_4

    .line 139
    const/16 v0, 0x15

    .line 140
    :cond_4
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    .line 148
    :cond_5
    :goto_4
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 150
    const/16 v6, 0x14

    if-le v0, v6, :cond_6

    .line 151
    const/16 v0, 0x14

    .line 152
    :cond_6
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_1

    .line 142
    :cond_7
    const-wide v6, 0x100000200L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 144
    const/4 v6, 0x6

    if-le v0, v6, :cond_8

    .line 145
    const/4 v0, 0x6

    .line 146
    :cond_8
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_4

    .line 156
    :pswitch_1
    const-wide v6, 0x100000200L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 158
    const/4 v0, 0x6

    .line 159
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_1

    .line 162
    :pswitch_2
    const-wide/high16 v6, 0x3ff000000000000L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 164
    const/16 v6, 0x14

    if-le v0, v6, :cond_9

    .line 165
    const/16 v0, 0x14

    .line 166
    :cond_9
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_1

    .line 169
    :pswitch_3
    const-wide v6, 0x3ff6cfafffffdffL

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 171
    const/16 v6, 0x15

    if-le v0, v6, :cond_a

    .line 172
    const/16 v0, 0x15

    .line 173
    :cond_a
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto/16 :goto_1

    .line 179
    :cond_b
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x80

    if-ge v4, v5, :cond_e

    .line 181
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    .line 184
    :cond_c
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_1

    .line 195
    :cond_d
    :goto_5
    if-ne v1, v2, :cond_c

    goto/16 :goto_2

    .line 188
    :pswitch_4
    const-wide/32 v6, -0x38000002

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    .line 190
    const/16 v0, 0x15

    .line 191
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_5

    .line 199
    :cond_e
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    .line 200
    const-wide/16 v5, 0x1

    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v5, v7

    .line 203
    :cond_f
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v7, v7, v1

    packed-switch v7, :pswitch_data_2

    .line 215
    :cond_10
    :goto_6
    if-ne v1, v2, :cond_f

    goto/16 :goto_2

    .line 207
    :pswitch_5
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_10

    .line 209
    const/16 v7, 0x15

    if-le v0, v7, :cond_11

    .line 210
    const/16 v0, 0x15

    .line 211
    :cond_11
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_6

    .line 226
    :cond_12
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v4

    iput-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v3

    move v3, v1

    move v1, v11

    .line 227
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_3

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 184
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 203
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final b(I)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->x:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    aput p1, v0, v1

    .line 88
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->x:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    aput v1, v0, p1

    .line 90
    :cond_0
    return-void
.end method

.method private final c(II)I
    .locals 12

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    .line 267
    const/4 v1, 0x1

    .line 268
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 269
    const v2, 0x7fffffff

    move v3, p2

    move v11, v0

    move v0, v2

    move v2, v11

    .line 272
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 273
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h()V

    .line 274
    :cond_0
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x40

    if-ge v4, v5, :cond_4

    .line 276
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    shl-long/2addr v4, v6

    .line 279
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    .line 291
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    .line 338
    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 340
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 341
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 342
    const v0, 0x7fffffff

    .line 344
    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 345
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v4, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    sub-int v2, v4, v2

    if-ne v3, v2, :cond_b

    move v0, v1

    .line 348
    :goto_3
    return v0

    .line 282
    :pswitch_0
    const/16 v4, 0xb

    if-le v0, v4, :cond_2

    .line 283
    const/16 v0, 0xb

    goto :goto_1

    .line 286
    :pswitch_1
    const/16 v4, 0x9

    if-le v0, v4, :cond_2

    .line 287
    const/16 v0, 0x9

    goto :goto_1

    .line 293
    :cond_4
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x80

    if-ge v4, v5, :cond_8

    .line 295
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    .line 298
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_1

    .line 316
    :cond_6
    :goto_4
    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 301
    :pswitch_2
    const/16 v4, 0xb

    if-le v0, v4, :cond_7

    .line 302
    const/16 v0, 0xb

    .line 303
    :cond_7
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    .line 304
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v6, 0x1

    aput v6, v4, v5

    goto :goto_4

    .line 307
    :pswitch_3
    const/16 v4, 0x9

    if-le v0, v4, :cond_6

    .line 308
    const/16 v0, 0x9

    goto :goto_4

    .line 311
    :pswitch_4
    const/16 v4, 0xb

    if-le v0, v4, :cond_6

    .line 312
    const/16 v0, 0xb

    goto :goto_4

    .line 320
    :cond_8
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    .line 321
    const-wide/16 v5, 0x1

    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v5, v7

    .line 324
    :cond_9
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v7, v7, v1

    packed-switch v7, :pswitch_data_2

    .line 336
    :cond_a
    :goto_5
    if-ne v1, v2, :cond_9

    goto :goto_2

    .line 327
    :pswitch_5
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a

    const/16 v7, 0xb

    if-le v0, v7, :cond_a

    .line 328
    const/16 v0, 0xb

    goto :goto_5

    .line 331
    :pswitch_6
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a

    const/16 v7, 0x9

    if-le v0, v7, :cond_a

    .line 332
    const/16 v0, 0x9

    goto :goto_5

    .line 347
    :cond_b
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v4

    iput-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v3

    move v3, v1

    move v1, v11

    .line 348
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_3

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 298
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 324
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final d()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 63
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    sparse-switch v0, :sswitch_data_0

    .line 80
    invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(II)I

    move-result v0

    :goto_0
    return v0

    .line 66
    :sswitch_0
    invoke-direct {p0, v1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(III)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(III)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_4
    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 78
    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch
.end method

.method private final d(II)I
    .locals 12

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    .line 386
    const/4 v1, 0x1

    .line 387
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 388
    const v2, 0x7fffffff

    move v3, p2

    move v11, v0

    move v0, v2

    move v2, v11

    .line 391
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h()V

    .line 393
    :cond_0
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x40

    if-ge v4, v5, :cond_5

    .line 395
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    shl-long/2addr v4, v6

    .line 398
    :cond_1
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_0

    .line 414
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    .line 472
    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 474
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 475
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 476
    const v0, 0x7fffffff

    .line 478
    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 479
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v4, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    sub-int v2, v4, v2

    if-ne v3, v2, :cond_f

    move v0, v1

    .line 482
    :goto_3
    return v0

    .line 402
    :pswitch_0
    const-wide v6, -0x400000001L

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 404
    const/16 v6, 0x12

    if-le v0, v6, :cond_4

    .line 405
    const/16 v0, 0x12

    .line 406
    :cond_4
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_1

    .line 409
    :pswitch_1
    const/16 v6, 0x11

    if-le v0, v6, :cond_2

    .line 410
    const/16 v0, 0x11

    goto :goto_1

    .line 416
    :cond_5
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x80

    if-ge v4, v5, :cond_b

    .line 418
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    .line 421
    :cond_6
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_1

    .line 446
    :cond_7
    :goto_4
    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 424
    :pswitch_2
    const-wide/32 v6, -0x10000001

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 426
    const/16 v6, 0x12

    if-le v0, v6, :cond_8

    .line 427
    const/16 v0, 0x12

    .line 428
    :cond_8
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_4

    .line 430
    :cond_9
    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_7

    .line 431
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 434
    :pswitch_3
    const/16 v6, 0x11

    if-le v0, v6, :cond_7

    .line 435
    const/16 v0, 0x11

    goto :goto_4

    .line 438
    :pswitch_4
    const-wide/32 v6, -0x10000001

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 440
    const/16 v6, 0x12

    if-le v0, v6, :cond_a

    .line 441
    const/16 v0, 0x12

    .line 442
    :cond_a
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_4

    .line 450
    :cond_b
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    .line 451
    const-wide/16 v5, 0x1

    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v5, v7

    .line 454
    :cond_c
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v7, v7, v1

    packed-switch v7, :pswitch_data_2

    .line 470
    :cond_d
    :goto_5
    if-ne v1, v2, :cond_c

    goto/16 :goto_2

    .line 458
    :pswitch_5
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d

    .line 460
    const/16 v7, 0x12

    if-le v0, v7, :cond_e

    .line 461
    const/16 v0, 0x12

    .line 462
    :cond_e
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b(I)V

    goto :goto_5

    .line 465
    :pswitch_6
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d

    const/16 v7, 0x11

    if-le v0, v7, :cond_d

    .line 466
    const/16 v0, 0x11

    goto :goto_5

    .line 481
    :cond_f
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v4

    iput-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v3

    move v3, v1

    move v1, v11

    .line 482
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_3

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 421
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 454
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final e()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->c(II)I

    move-result v0

    :goto_0
    return v0

    .line 255
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 257
    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final e(II)I
    .locals 12

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    .line 522
    const/4 v1, 0x1

    .line 523
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 524
    const v2, 0x7fffffff

    move v3, p2

    move v11, v0

    move v0, v2

    move v2, v11

    .line 527
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 528
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h()V

    .line 529
    :cond_0
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x40

    if-ge v4, v5, :cond_4

    .line 531
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    shl-long/2addr v4, v6

    .line 534
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    .line 546
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_1

    .line 593
    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 595
    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 596
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 597
    const v0, 0x7fffffff

    .line 599
    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 600
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v4, 0x3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    sub-int v2, v4, v2

    if-ne v3, v2, :cond_b

    move v0, v1

    .line 603
    :goto_3
    return v0

    .line 537
    :pswitch_0
    const/16 v4, 0xf

    if-le v0, v4, :cond_2

    .line 538
    const/16 v0, 0xf

    goto :goto_1

    .line 541
    :pswitch_1
    const/16 v4, 0xc

    if-le v0, v4, :cond_2

    .line 542
    const/16 v0, 0xc

    goto :goto_1

    .line 548
    :cond_4
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x80

    if-ge v4, v5, :cond_8

    .line 550
    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    .line 553
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_1

    .line 571
    :cond_6
    :goto_4
    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 556
    :pswitch_2
    const/16 v4, 0xf

    if-le v0, v4, :cond_7

    .line 557
    const/16 v0, 0xf

    .line 558
    :cond_7
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    .line 559
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->t:I

    const/4 v6, 0x1

    aput v6, v4, v5

    goto :goto_4

    .line 562
    :pswitch_3
    const/16 v4, 0xc

    if-le v0, v4, :cond_6

    .line 563
    const/16 v0, 0xc

    goto :goto_4

    .line 566
    :pswitch_4
    const/16 v4, 0xf

    if-le v0, v4, :cond_6

    .line 567
    const/16 v0, 0xf

    goto :goto_4

    .line 575
    :cond_8
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    .line 576
    const-wide/16 v5, 0x1

    iget-char v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v5, v7

    .line 579
    :cond_9
    iget-object v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->y:[I

    add-int/lit8 v1, v1, -0x1

    aget v7, v7, v1

    packed-switch v7, :pswitch_data_2

    .line 591
    :cond_a
    :goto_5
    if-ne v1, v2, :cond_9

    goto :goto_2

    .line 582
    :pswitch_5
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a

    const/16 v7, 0xf

    if-le v0, v7, :cond_a

    .line 583
    const/16 v0, 0xf

    goto :goto_5

    .line 586
    :pswitch_6
    sget-object v7, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d:[J

    aget-wide v7, v7, v4

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_a

    const/16 v7, 0xc

    if-le v0, v7, :cond_a

    .line 587
    const/16 v0, 0xc

    goto :goto_5

    .line 602
    :cond_b
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v4

    iput-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v3

    move v3, v1

    move v1, v11

    .line 603
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_3

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 553
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 579
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final f()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    packed-switch v0, :pswitch_data_0

    .line 378
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d(II)I

    move-result v0

    :goto_0
    return v0

    .line 376
    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final g()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    packed-switch v0, :pswitch_data_0

    .line 514
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->e(II)I

    move-result v0

    :goto_0
    return v0

    .line 510
    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 512
    :pswitch_1
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final h()V
    .locals 3

    .prologue
    .line 658
    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->u:I

    .line 659
    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 660
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->x:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 3

    .prologue
    .line 677
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 678
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->a:I

    .line 679
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->f:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget-object v1, v1, v2

    .line 680
    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    .line 681
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->g()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->b:I

    .line 682
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->f()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->c:I

    .line 683
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->d:I

    .line 684
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->e:I

    .line 685
    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 669
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 670
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 672
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    .line 673
    return-void
.end method

.method a(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V
    .locals 4

    .prologue
    .line 869
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    packed-switch v0, :pswitch_data_0

    .line 880
    :goto_0
    return-void

    .line 872
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 874
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->p:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 875
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const v9, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 698
    move v0, v7

    move-object v1, v11

    .line 707
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    iput-object v11, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 717
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 721
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    packed-switch v2, :pswitch_data_0

    .line 744
    :goto_2
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    if-eq v2, v9, :cond_8

    .line 746
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    .line 747
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    sub-int v3, v0, v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(I)V

    .line 748
    :cond_1
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->i:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x1

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 750
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 751
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->h:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 752
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V

    .line 753
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget v1, v1, v2

    if-eq v1, v10, :cond_2

    .line 754
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    .line 755
    :cond_2
    :goto_3
    return-object v0

    .line 709
    :catch_0
    move-exception v0

    .line 711
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 712
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 713
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->h:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_3

    .line 724
    :pswitch_0
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 725
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 726
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->d()I

    move-result v0

    goto :goto_2

    .line 729
    :pswitch_1
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 730
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 731
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->e()I

    move-result v0

    goto :goto_2

    .line 734
    :pswitch_2
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 735
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 736
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->g()I

    move-result v0

    goto :goto_2

    .line 739
    :pswitch_3
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 740
    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    .line 741
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->f()I

    move-result v0

    goto :goto_2

    .line 757
    :cond_3
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->j:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x1

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 759
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->k:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x1

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 761
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v2

    .line 762
    if-nez v1, :cond_5

    move-object v1, v2

    .line 770
    :cond_4
    :goto_4
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget v2, v2, v3

    if-eq v2, v10, :cond_0

    .line 771
    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget v2, v2, v3

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    goto/16 :goto_0

    .line 766
    :cond_5
    iput-object v1, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->h:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 767
    iput-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-object v1, v2

    goto :goto_4

    .line 774
    :cond_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->c()V

    .line 775
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget v0, v0, v2

    if-eq v0, v10, :cond_7

    .line 776
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->h:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    .line 778
    :cond_7
    iput v9, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    .line 780
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v7

    .line 781
    goto/16 :goto_1

    .line 783
    :catch_1
    move-exception v0

    move v0, v7

    .line 785
    :cond_8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->e()I

    move-result v1

    .line 786
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->d()I

    move-result v2

    .line 789
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->c()C

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v2

    move v3, v1

    move v1, v7

    move-object v2, v11

    .line 800
    :goto_5
    if-nez v1, :cond_d

    .line 801
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->a(I)V

    .line 802
    if-gt v0, v8, :cond_c

    const-string v0, ""

    :goto_6
    move-object v5, v0

    .line 804
    :goto_7
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->r:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 790
    :catch_2
    move-exception v3

    .line 792
    if-gt v0, v8, :cond_a

    const-string v3, ""

    .line 793
    :goto_8
    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0xa

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->q:C

    const/16 v5, 0xd

    if-ne v4, v5, :cond_b

    .line 794
    :cond_9
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    move v4, v7

    move v3, v1

    move v1, v8

    .line 795
    goto :goto_5

    .line 792
    :cond_a
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 798
    :cond_b
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move-object v2, v3

    move v3, v1

    move v1, v8

    goto :goto_5

    .line 802
    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    move-object v5, v2

    goto :goto_7

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method c()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 811
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 812
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->w:I

    packed-switch v0, :pswitch_data_0

    .line 866
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 815
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 816
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 817
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 818
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 819
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 822
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 823
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 824
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 825
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 826
    sput v4, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b:I

    goto :goto_0

    .line 829
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 831
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 832
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 833
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 836
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 837
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 838
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 839
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 840
    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b:I

    goto/16 :goto_0

    .line 843
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 844
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 845
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 846
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 847
    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b:I

    sub-int/2addr v0, v4

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->a(I)V

    goto/16 :goto_0

    .line 850
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 851
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 852
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 853
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 854
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 857
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 858
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    .line 859
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->m:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->b(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 860
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->o:I

    .line 861
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
