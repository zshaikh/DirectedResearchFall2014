.class public Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
.super Ljava/lang/Object;
.source "ContentTypeParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field private static m:[I


# instance fields
.field public b:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

.field c:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field public d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field public e:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private final l:[I

.field private n:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private o:[I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 129
    invoke-static {}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->h:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->i:Ljava/util/List;

    .line 126
    new-array v0, v4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->l:[I

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->n:Ljava/util/Vector;

    .line 233
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->p:I

    .line 160
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v0, p1, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->c:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    .line 161
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->c:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->b:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    .line 162
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 163
    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    .line 164
    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k:I

    move v0, v3

    .line 165
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->l:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method private final a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 197
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    .line 198
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->a:I

    if-ne v1, p1, :cond_1

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k:I

    .line 200
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    return-object v0

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->b:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_0

    .line 202
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 203
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->p:I

    .line 204
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->i()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static j()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->m:[I

    .line 133
    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0x2
        0x10
        0x380000
    .end array-data
.end method

.method private final k()I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->e:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->b:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->b()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->g:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->a:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    .line 228
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->e:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->a:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->h:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->i:Ljava/util/List;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->f()V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 65
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/16 v2, 0x15

    .line 70
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 71
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 72
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    .line 73
    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->f:Ljava/lang/String;

    .line 74
    iget-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->g:Ljava/lang/String;

    .line 77
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 82
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->l:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k:I

    aput v2, v0, v1

    .line 88
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    goto :goto_1

    .line 85
    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 86
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->g()V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 94
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 95
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->h()Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->h:Ljava/util/List;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 102
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 113
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->l:[I

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k:I

    aput v2, v0, v1

    .line 114
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    .line 115
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->j:I

    goto :goto_0

    .line 104
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    .line 117
    :goto_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->f:Ljava/lang/String;

    return-object v0

    .line 107
    :pswitch_1
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    goto :goto_1

    .line 110
    :pswitch_2
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 237
    new-array v0, v7, [Z

    move v1, v5

    .line 238
    :goto_0
    if-ge v1, v7, :cond_0

    .line 239
    aput-boolean v5, v0, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->p:I

    if-ltz v1, :cond_1

    .line 242
    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->p:I

    aput-boolean v6, v0, v1

    .line 243
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->p:I

    :cond_1
    move v1, v5

    .line 245
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 246
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->l:[I

    aget v2, v2, v1

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->k:I

    if-ne v2, v3, :cond_3

    move v2, v5

    .line 247
    :goto_2
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    .line 248
    sget-object v3, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->m:[I

    aget v3, v3, v1

    shl-int v4, v6, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 249
    aput-boolean v6, v0, v2

    .line 247
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v5

    .line 254
    :goto_3
    if-ge v1, v7, :cond_6

    .line 255
    aget-boolean v2, v0, v1

    if-eqz v2, :cond_5

    .line 256
    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->o:[I

    .line 257
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->o:[I

    aput v1, v2, v5

    .line 258
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->n:Ljava/util/Vector;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->o:[I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 254
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 261
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [[I

    move v2, v5

    .line 262
    :goto_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 263
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->n:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v1, v2

    .line 262
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 265
    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->d:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->a:[Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method
