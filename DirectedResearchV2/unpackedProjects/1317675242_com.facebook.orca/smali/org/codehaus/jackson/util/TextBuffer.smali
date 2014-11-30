.class public final Lorg/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final a:[C


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/TextBuffer;->a:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 122
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private final b(I)[C
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private c(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 606
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 607
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 608
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 609
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 610
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 611
    const/4 v3, -0x1

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 614
    add-int v3, v0, p1

    .line 615
    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 616
    :cond_0
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 618
    :cond_1
    if-lez v0, :cond_2

    .line 619
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    :cond_2
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 622
    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 623
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    .line 635
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 636
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 637
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 639
    array-length v0, v0

    .line 641
    shr-int/lit8 v1, v0, 0x1

    .line 642
    if-ge v1, p1, :cond_1

    move v1, p1

    .line 645
    :cond_1
    const/high16 v2, 0x40000

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->e(I)[C

    move-result-object v0

    .line 646
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 647
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 648
    return-void
.end method

.method private final e(I)[C
    .locals 1

    .prologue
    .line 686
    new-array v0, p1, [C

    return-object v0
.end method

.method private final o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 250
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 252
    return-void
.end method

.method private p()[C
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 652
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 658
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_2

    .line 659
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    if-ge v0, v1, :cond_1

    .line 660
    sget-object v0, Lorg/codehaus/jackson/util/TextBuffer;->a:[C

    goto :goto_0

    .line 662
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->e(I)[C

    move-result-object v0

    .line 663
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-static {v1, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 666
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v0

    .line 667
    if-ge v0, v1, :cond_3

    .line 668
    sget-object v0, Lorg/codehaus/jackson/util/TextBuffer;->a:[C

    goto :goto_0

    .line 671
    :cond_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->e(I)[C

    move-result-object v1

    .line 672
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 673
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    move v4, v6

    :goto_1
    if-ge v3, v2, :cond_4

    .line 674
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 675
    array-length v5, v0

    .line 676
    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    add-int v0, v4, v5

    .line 673
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v4

    .line 680
    :goto_2
    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-static {v2, v6, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->b()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->b()V

    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 145
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0
.end method

.method public a(C)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 411
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 412
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 414
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 415
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 417
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 418
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)V

    .line 420
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 422
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    aput-char p1, v0, v1

    .line 423
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 540
    iput p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 541
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 216
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 218
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 221
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->o()V

    .line 224
    :cond_0
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 226
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 459
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 460
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 462
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 463
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 466
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 467
    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    sub-int/2addr v1, v2

    .line 468
    if-lt v1, p3, :cond_1

    .line 469
    add-int v1, p2, p3

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 470
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 485
    :goto_0
    return-void

    .line 473
    :cond_1
    if-lez v1, :cond_2

    .line 474
    add-int v2, p2, v1

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 475
    sub-int v0, p3, v1

    .line 476
    add-int/2addr v1, p2

    .line 481
    :goto_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)V

    .line 482
    add-int v2, v1, v0

    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 483
    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    goto :goto_0

    :cond_2
    move v0, p3

    move v1, p2

    goto :goto_1
.end method

.method public a([CII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 183
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 184
    iput p2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 185
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 188
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->o()V

    .line 191
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 157
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 158
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 160
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 161
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 165
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->o()V

    .line 168
    :cond_0
    return-void
.end method

.method public b([CII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 197
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 199
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 203
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->o()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->c([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    goto :goto_0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public c([CII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 428
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 429
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 431
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 432
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 435
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 436
    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    sub-int/2addr v1, v2

    .line 438
    if-lt v1, p3, :cond_1

    .line 439
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 454
    :goto_0
    return-void

    .line 443
    :cond_1
    if-lez v1, :cond_2

    .line 444
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    add-int v0, p2, v1

    .line 446
    sub-int v1, p3, v1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 450
    :goto_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)V

    .line 451
    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    goto :goto_0

    :cond_2
    move v0, p3

    move v1, p2

    goto :goto_1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[C
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 303
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    goto :goto_0

    .line 299
    :cond_2
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->g()[C

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 348
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 320
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_3

    .line 321
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_1

    .line 324
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 328
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 330
    if-nez v0, :cond_5

    .line 331
    if-nez v1, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 333
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 336
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :goto_3
    if-ge v3, v1, :cond_6

    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 338
    array-length v4, v0

    invoke-virtual {v2, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 342
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-virtual {v2, v0, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()[C
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 354
    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->p()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 357
    :cond_0
    return-object v0
.end method

.method public h()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 380
    :goto_0
    return-object v0

    .line 372
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_1

    .line 373
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 376
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    if-nez v0, :cond_2

    .line 377
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->g()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public i()D
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberInput;->c(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public j()[C
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 499
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    if-ltz v0, :cond_1

    .line 500
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->c(I)V

    .line 510
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    return-object v0

    .line 502
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 503
    if-nez v0, :cond_2

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    goto :goto_0

    .line 505
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 507
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->d(I)V

    goto :goto_0
.end method

.method public final k()[C
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->d:I

    .line 517
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 518
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->e:I

    .line 520
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->c:[C

    .line 521
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->k:Ljava/lang/String;

    .line 522
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->l:[C

    .line 525
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->o()V

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 529
    if-nez v0, :cond_1

    .line 530
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 532
    :cond_1
    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    return v0
.end method

.method public m()[C
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    .line 548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->g:Z

    .line 549
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    array-length v0, v0

    .line 551
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->h:I

    .line 553
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 554
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->e(I)[C

    move-result-object v0

    .line 555
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->j:I

    .line 556
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 557
    return-object v0
.end method

.method public n()[C
    .locals 5

    .prologue
    const/high16 v4, 0x40000

    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 569
    array-length v1, v0

    .line 571
    if-ne v1, v4, :cond_0

    const v2, 0x40001

    .line 573
    :goto_0
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->e(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    .line 574
    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->i:[C

    return-object v0

    .line 571
    :cond_0
    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
