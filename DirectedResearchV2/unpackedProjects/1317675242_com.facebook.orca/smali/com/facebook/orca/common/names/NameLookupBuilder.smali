.class public abstract Lcom/facebook/orca/common/names/NameLookupBuilder;
.super Ljava/lang/Object;
.source "NameLookupBuilder.java"


# static fields
.field private static e:[I

.field private static f:I


# instance fields
.field private final a:Lcom/facebook/orca/common/names/NameSplitter;

.field private b:[[Ljava/lang/String;

.field private c:Ljava/lang/StringBuilder;

.field private d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/orca/common/names/NameLookupBuilder;->e:[I

    .line 62
    sput v1, Lcom/facebook/orca/common/names/NameLookupBuilder;->f:I

    return-void

    .line 28
    :array_0
    .array-data 4
        0x1100
        0x1101
        0x0
        0x1102
        0x0
        0x0
        0x1103
        0x1104
        0x1105
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1106
        0x1107
        0x1108
        0x0
        0x1109
        0x110a
        0x110b
        0x110c
        0x110d
        0x110e
        0x110f
        0x1110
        0x1111
        0x1112
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/orca/common/names/NameSplitter;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->b:[[Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->a:Lcom/facebook/orca/common/names/NameSplitter;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 258
    :goto_0
    if-ge v0, p2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 270
    move v6, p2

    :goto_0
    if-ge v6, p3, :cond_2

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->b:[[Ljava/lang/String;

    aget-object v7, v0, v6

    .line 272
    if-eqz v7, :cond_1

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v8, v0, v6

    move v9, v2

    .line 274
    :goto_1
    array-length v0, v7

    if-ge v9, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v1, v7, v9

    aput-object v1, v0, v6

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, v2

    move v5, v2

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;IIZZ)V

    .line 281
    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;II)V

    .line 274
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aput-object v8, v0, v6

    .line 270
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 286
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;IIZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 238
    :goto_0
    if-ge v0, p2, :cond_1

    .line 239
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    if-eqz p4, :cond_2

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;I)V

    .line 250
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 209
    if-ne p2, p3, :cond_2

    .line 210
    if-eqz p4, :cond_1

    move v0, v8

    :goto_0
    invoke-direct {p0, p1, p3, v0, p5}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;IIZ)V

    .line 229
    :cond_0
    return-void

    :cond_1
    move v0, v9

    .line 210
    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v6, v0, p2

    move v7, p2

    .line 219
    :goto_1
    if-ge v7, p3, :cond_0

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, p2

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aput-object v6, v0, v7

    .line 223
    add-int/lit8 v2, p2, 0x1

    if-eqz p4, :cond_3

    if-ne v7, p2, :cond_3

    move v4, v9

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;IIZZ)V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v1, v1, p2

    aput-object v1, v0, v7

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aput-object v6, v0, p2

    .line 219
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_3
    move v4, v8

    .line 223
    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const v7, 0xac00

    const/4 v2, 0x0

    const/16 v6, 0x3131

    .line 143
    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v2

    .line 150
    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 151
    const/16 v4, 0x20

    if-ne v2, v4, :cond_2

    .line 183
    :goto_1
    if-lt v3, v0, :cond_9

    :cond_0
    move v0, v1

    .line 187
    :goto_2
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 188
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/names/NameLookupBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    :cond_1
    return-void

    .line 157
    :cond_2
    const/16 v4, 0x1100

    if-lt v2, v4, :cond_0

    const/16 v4, 0x1112

    if-le v2, v4, :cond_3

    if-lt v2, v6, :cond_0

    :cond_3
    const/16 v4, 0x314e

    if-le v2, v4, :cond_4

    if-lt v2, v7, :cond_0

    :cond_4
    const v4, 0xd7a3

    if-le v2, v4, :cond_5

    move v0, v1

    .line 160
    goto :goto_2

    .line 163
    :cond_5
    if-lt v2, v7, :cond_7

    .line 167
    sub-int/2addr v2, v7

    div-int/lit16 v2, v2, 0x24c

    add-int/lit16 v2, v2, 0x1100

    .line 181
    :cond_6
    iget-object v4, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_7
    if-lt v2, v6, :cond_6

    .line 171
    sub-int v4, v2, v6

    sget v5, Lcom/facebook/orca/common/names/NameLookupBuilder;->f:I

    if-lt v4, v5, :cond_8

    move v0, v1

    .line 173
    goto :goto_2

    .line 175
    :cond_8
    sget-object v4, Lcom/facebook/orca/common/names/NameLookupBuilder;->e:[I

    sub-int/2addr v2, v6

    aget v2, v4, v2

    .line 176
    if-nez v2, :cond_6

    move v0, v1

    .line 178
    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a()Lcom/facebook/orca/common/names/ContactLocaleUtils;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/common/names/ContactLocaleUtils;->a(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    const/4 v2, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/names/NameLookupBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->a:Lcom/facebook/orca/common/names/NameSplitter;

    iget-object v1, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/orca/common/names/NameSplitter;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 94
    :goto_1
    if-ge v1, v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/facebook/orca/common/names/NameLookupBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_1
    if-le v0, v8, :cond_2

    move v1, v5

    .line 99
    :goto_2
    if-eqz v1, :cond_6

    .line 100
    invoke-direct {p0, p1, v0, v2, v5}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;IIZ)V

    .line 103
    iget-object v3, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    new-instance v4, Lcom/facebook/orca/common/names/NameLookupBuilder$1;

    invoke-direct {v4, p0}, Lcom/facebook/orca/common/names/NameLookupBuilder$1;-><init>(Lcom/facebook/orca/common/names/NameLookupBuilder;)V

    invoke-static {v3, v2, v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 112
    iget-object v3, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    move v4, v8

    .line 113
    :goto_3
    if-ge v4, v0, :cond_3

    .line 114
    iget-object v6, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v7, v7, v4

    aput-object v7, v6, v2

    .line 115
    invoke-direct {p0, p1, v8}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;I)V

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v1, v2

    .line 98
    goto :goto_2

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aput-object v3, v0, v2

    move v3, v8

    :goto_4
    move v0, v2

    .line 123
    :goto_5
    if-ge v0, v3, :cond_4

    .line 124
    iget-object v4, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->b:[[Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/orca/common/names/NameLookupBuilder;->d:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 127
    :cond_4
    if-nez v1, :cond_5

    move v4, v5

    :goto_6
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;IIZZ)V

    .line 128
    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/orca/common/names/NameLookupBuilder;->a(Ljava/lang/String;II)V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/names/NameLookupBuilder;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/names/NameLookupBuilder;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move v4, v2

    .line 127
    goto :goto_6

    :cond_6
    move v3, v0

    goto :goto_4
.end method

.method protected abstract a(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    invoke-static {p1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
