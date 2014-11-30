.class public Lc/a/a/d/d;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method private a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/d/d;->b:Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-object p0
.end method

.method private a(Ljava/lang/Object;)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/d/d;->b:Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-object p0
.end method

.method private a(Lc/a/a/d/w;)V
    .locals 2

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No printer supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    return-void
.end method

.method static a(Ljava/io/Writer;I)V
    .locals 1

    .prologue
    .line 1195
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1196
    const v0, 0xfffd

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1198
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1189
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1190
    const v0, 0xfffd

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1165
    instance-of v0, p1, Lc/a/a/d/w;

    if-eqz v0, :cond_1

    .line 1166
    instance-of v0, p1, Lc/a/a/d/f;

    if-eqz v0, :cond_0

    .line 1167
    check-cast p1, Lc/a/a/d/f;

    invoke-virtual {p1}, Lc/a/a/d/f;->c()Z

    move-result v0

    .line 1171
    :goto_0
    return v0

    .line 1169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lc/a/a/d/s;)V
    .locals 2

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1175
    instance-of v0, p1, Lc/a/a/d/s;

    if-eqz v0, :cond_1

    .line 1176
    instance-of v0, p1, Lc/a/a/d/f;

    if-eqz v0, :cond_0

    .line 1177
    check-cast p1, Lc/a/a/d/f;

    invoke-virtual {p1}, Lc/a/a/d/f;->d()Z

    move-result v0

    .line 1181
    :goto_0
    return v0

    .line 1179
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1138
    iget-object v0, p0, Lc/a/a/d/d;->b:Ljava/lang/Object;

    .line 1140
    if-nez v0, :cond_3

    .line 1141
    iget-object v1, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1142
    iget-object v1, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1143
    iget-object v2, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1145
    if-eqz v1, :cond_4

    .line 1146
    if-eq v1, v2, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1154
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1155
    new-instance v0, Lc/a/a/d/f;

    iget-object v1, p0, Lc/a/a/d/d;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lc/a/a/d/f;-><init>(Ljava/util/List;)V

    .line 1158
    :cond_2
    iput-object v0, p0, Lc/a/a/d/d;->b:Ljava/lang/Object;

    .line 1161
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v2

    .line 1150
    goto :goto_0
.end method


# virtual methods
.method public a()Lc/a/a/d/c;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lc/a/a/d/d;->k()Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-direct {p0, v1}, Lc/a/a/d/d;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 108
    check-cast v0, Lc/a/a/d/w;

    .line 111
    :goto_0
    invoke-direct {p0, v1}, Lc/a/a/d/d;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    check-cast v1, Lc/a/a/d/s;

    .line 114
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    new-instance v2, Lc/a/a/d/c;

    invoke-direct {v2, v0, v1}, Lc/a/a/d/c;-><init>(Lc/a/a/d/w;Lc/a/a/d/s;)V

    return-object v2

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public a(C)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lc/a/a/d/e;

    invoke-direct {v0, p1}, Lc/a/a/d/e;-><init>(C)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Lc/a/a/d;->c()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lc/a/a/d;->d()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->c(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 869
    new-instance v0, Lc/a/a/d/q;

    invoke-static {}, Lc/a/a/d;->s()Lc/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lc/a/a/d/q;-><init>(Lc/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/d/c;)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lc/a/a/d/c;->a()Lc/a/a/d/w;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/d/c;->b()Lc/a/a/d/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/d/s;)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lc/a/a/d/d;->c(Lc/a/a/d/s;)V

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/d/w;[Lc/a/a/d/s;)Lc/a/a/d/d;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lc/a/a/d/d;->a(Lc/a/a/d/w;)V

    .line 308
    :cond_0
    if-nez p2, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parsers supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    array-length v1, p2

    .line 312
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 313
    aget-object v1, p2, v0

    if-nez v1, :cond_2

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 319
    :cond_3
    new-array v2, v1, [Lc/a/a/d/s;

    .line 321
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5

    .line 322
    aget-object v3, p2, v0

    aput-object v3, v2, v0

    if-nez v3, :cond_4

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete parser array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_5
    aget-object v1, p2, v0

    aput-object v1, v2, v0

    .line 328
    new-instance v0, Lc/a/a/d/i;

    invoke-direct {v0, v2}, Lc/a/a/d/i;-><init>([Lc/a/a/d/s;)V

    invoke-direct {p0, p1, v0}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lc/a/a/d;)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    new-instance v0, Lc/a/a/d/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc/a/a/d/m;-><init>(Lc/a/a/d;Z)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/d;I)Lc/a/a/d/d;
    .locals 3

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    if-gtz p2, :cond_1

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal number of digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    new-instance v0, Lc/a/a/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lc/a/a/d/g;-><init>(Lc/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/d;II)Lc/a/a/d/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 440
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :cond_3
    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 444
    new-instance v0, Lc/a/a/d/r;

    invoke-direct {v0, p1, p3, v1}, Lc/a/a/d/r;-><init>(Lc/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lc/a/a/d/k;

    invoke-direct {v0, p1, p3, v1, p2}, Lc/a/a/d/k;-><init>(Lc/a/a/d;IZI)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    new-instance v0, Lc/a/a/d/l;

    invoke-direct {v0, p1}, Lc/a/a/d/l;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object p0

    :goto_0
    :pswitch_0
    return-object p0

    .line 415
    :pswitch_1
    new-instance v0, Lc/a/a/d/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lc/a/a/d/e;-><init>(C)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object p0

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZII)Lc/a/a/d/d;
    .locals 6

    .prologue
    .line 1118
    new-instance v0, Lc/a/a/d/p;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lc/a/a/d/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZII)Lc/a/a/d/d;
    .locals 6

    .prologue
    .line 1091
    new-instance v0, Lc/a/a/d/p;

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc/a/a/d/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lc/a/a/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/i;",
            ">;)",
            "Lc/a/a/d/d;"
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Lc/a/a/d/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc/a/a/d/o;-><init>(ILjava/util/Map;)V

    .line 1058
    invoke-direct {p0, v0, v0}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 705
    invoke-static {}, Lc/a/a/d;->e()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lc/a/a/d;->f()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->c(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(IZ)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Lc/a/a/d/q;

    invoke-static {}, Lc/a/a/d;->p()Lc/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lc/a/a/d/q;-><init>(Lc/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lc/a/a/d/s;)Lc/a/a/d/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-direct {p0, p1}, Lc/a/a/d/d;->c(Lc/a/a/d/s;)V

    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [Lc/a/a/d/s;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 347
    new-instance v1, Lc/a/a/d/i;

    invoke-direct {v1, v0}, Lc/a/a/d/i;-><init>([Lc/a/a/d/s;)V

    invoke-direct {p0, v2, v1}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lc/a/a/d;)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    new-instance v0, Lc/a/a/d/m;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc/a/a/d/m;-><init>(Lc/a/a/d;Z)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lc/a/a/d;II)Lc/a/a/d/d;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 492
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 493
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 495
    :cond_3
    if-gt p2, v1, :cond_4

    .line 496
    new-instance v0, Lc/a/a/d/r;

    invoke-direct {v0, p1, p3, v1}, Lc/a/a/d/r;-><init>(Lc/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lc/a/a/d/k;

    invoke-direct {v0, p1, p3, v1, p2}, Lc/a/a/d/k;-><init>(Lc/a/a/d;IZI)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lc/a/a/d/s;
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lc/a/a/d/d;->k()Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lc/a/a/d/d;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lc/a/a/d/s;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 955
    invoke-static {}, Lc/a/a/d;->k()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->a(Lc/a/a/d;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Lc/a/a/d;->g()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Lc/a/a/d;->g()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->c(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Lc/a/a/d;II)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 576
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 577
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 579
    :cond_3
    new-instance v0, Lc/a/a/d/h;

    invoke-direct {v0, p1, p2, p3}, Lc/a/a/d/h;-><init>(Lc/a/a/d;II)V

    invoke-direct {p0, v0}, Lc/a/a/d/d;->a(Ljava/lang/Object;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lc/a/a/d;->l()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->a(Lc/a/a/d;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Lc/a/a/d;->h()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public d(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 807
    invoke-static {}, Lc/a/a/d;->p()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->b(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 976
    invoke-static {}, Lc/a/a/d;->l()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->b(Lc/a/a/d;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 745
    invoke-static {}, Lc/a/a/d;->i()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public e(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 829
    invoke-static {}, Lc/a/a/d;->s()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->b(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lc/a/a/d;->r()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->a(Lc/a/a/d;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Lc/a/a/d;->j()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public f(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lc/a/a/d;->t()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public g()Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 997
    invoke-static {}, Lc/a/a/d;->r()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->b(Lc/a/a/d;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public g(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lc/a/a/d;->l()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public g(II)Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Lc/a/a/d;->v()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/d/d;->b(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public h()Lc/a/a/d/d;
    .locals 1

    .prologue
    .line 1007
    invoke-static {}, Lc/a/a/d;->w()Lc/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/d/d;->a(Lc/a/a/d;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 775
    invoke-static {}, Lc/a/a/d;->m()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public i()Lc/a/a/d/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1018
    new-instance v0, Lc/a/a/d/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lc/a/a/d/o;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 785
    invoke-static {}, Lc/a/a/d;->n()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public j()Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 1068
    sget-object v0, Lc/a/a/d/n;->a:Lc/a/a/d/n;

    sget-object v1, Lc/a/a/d/n;->a:Lc/a/a/d/n;

    invoke-direct {p0, v0, v1}, Lc/a/a/d/d;->a(Lc/a/a/d/w;Lc/a/a/d/s;)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 795
    invoke-static {}, Lc/a/a/d;->o()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lc/a/a/d/d;
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lc/a/a/d;->r()Lc/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lc/a/a/d/d;->a(Lc/a/a/d;II)Lc/a/a/d/d;

    move-result-object v0

    return-object v0
.end method
