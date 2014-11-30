.class public Lcom/c/b/b/b;
.super Ljava/lang/Object;
.source "NoteStore.java"


# instance fields
.field protected a:Lorg/apache/c/b/f;

.field protected b:Lorg/apache/c/b/f;

.field protected c:I


# direct methods
.method public constructor <init>(Lorg/apache/c/b/f;Lorg/apache/c/b/f;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    .line 47
    iput-object p2, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/c/b/c/g;)Lcom/c/b/c/g;
    .locals 1

    .prologue
    .line 1755
    invoke-virtual {p0, p1, p2}, Lcom/c/b/b/b;->b(Ljava/lang/String;Lcom/c/b/c/g;)V

    .line 1756
    invoke-virtual {p0}, Lcom/c/b/b/b;->e()Lcom/c/b/c/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/c/b/c/x;)Lcom/c/b/c/x;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/c/b/b/b;->b(Ljava/lang/String;Lcom/c/b/c/x;)V

    .line 737
    invoke-virtual {p0}, Lcom/c/b/b/b;->d()Lcom/c/b/c/x;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->i()Lorg/apache/c/b/e;

    move-result-object v0

    .line 354
    iget-byte v1, v0, Lorg/apache/c/b/e;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 355
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-static {v0}, Lorg/apache/c/a;->a(Lorg/apache/c/b/f;)Lorg/apache/c/a;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 357
    throw v0

    .line 359
    :cond_0
    iget v0, v0, Lorg/apache/c/b/e;->c:I

    iget v1, p0, Lcom/c/b/b/b;->c:I

    if-eq v0, v1, :cond_1

    .line 360
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x4

    const-string v2, "listNotebooks failed: out of sequence response"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    new-instance v0, Lcom/c/b/b/q;

    invoke-direct {v0}, Lcom/c/b/b/q;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/q;->a(Lorg/apache/c/b/f;)V

    .line 364
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 365
    invoke-virtual {v0}, Lcom/c/b/b/q;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    invoke-static {v0}, Lcom/c/b/b/q;->c(Lcom/c/b/b/q;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 368
    :cond_2
    invoke-static {v0}, Lcom/c/b/b/q;->d(Lcom/c/b/b/q;)Lcom/c/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 369
    invoke-static {v0}, Lcom/c/b/b/q;->d(Lcom/c/b/b/q;)Lcom/c/b/a/f;

    move-result-object v0

    throw v0

    .line 371
    :cond_3
    invoke-static {v0}, Lcom/c/b/b/q;->e(Lcom/c/b/b/q;)Lcom/c/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 372
    invoke-static {v0}, Lcom/c/b/b/q;->e(Lcom/c/b/b/q;)Lcom/c/b/a/d;

    move-result-object v0

    throw v0

    .line 374
    :cond_4
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x5

    const-string v2, "listNotebooks failed: unknown result"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/c/b/b/b;->b(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/c/b/b/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/c/b/c/l;
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->i()Lorg/apache/c/b/e;

    move-result-object v0

    .line 442
    iget-byte v1, v0, Lorg/apache/c/b/e;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 443
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-static {v0}, Lorg/apache/c/a;->a(Lorg/apache/c/b/f;)Lorg/apache/c/a;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 445
    throw v0

    .line 447
    :cond_0
    iget v0, v0, Lorg/apache/c/b/e;->c:I

    iget v1, p0, Lcom/c/b/b/b;->c:I

    if-eq v0, v1, :cond_1

    .line 448
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x4

    const-string v2, "getDefaultNotebook failed: out of sequence response"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    new-instance v0, Lcom/c/b/b/m;

    invoke-direct {v0}, Lcom/c/b/b/m;-><init>()V

    .line 451
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/m;->a(Lorg/apache/c/b/f;)V

    .line 452
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 453
    invoke-virtual {v0}, Lcom/c/b/b/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    invoke-static {v0}, Lcom/c/b/b/m;->c(Lcom/c/b/b/m;)Lcom/c/b/c/l;

    move-result-object v0

    return-object v0

    .line 456
    :cond_2
    invoke-static {v0}, Lcom/c/b/b/m;->d(Lcom/c/b/b/m;)Lcom/c/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 457
    invoke-static {v0}, Lcom/c/b/b/m;->d(Lcom/c/b/b/m;)Lcom/c/b/a/f;

    move-result-object v0

    throw v0

    .line 459
    :cond_3
    invoke-static {v0}, Lcom/c/b/b/m;->e(Lcom/c/b/b/m;)Lcom/c/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 460
    invoke-static {v0}, Lcom/c/b/b/m;->e(Lcom/c/b/b/m;)Lcom/c/b/a/d;

    move-result-object v0

    throw v0

    .line 462
    :cond_4
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x5

    const-string v2, "getDefaultNotebook failed: unknown result"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 343
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    new-instance v1, Lorg/apache/c/b/e;

    const-string v2, "listNotebooks"

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/b/b/b;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/b/b/b;->c:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/e;)V

    .line 344
    new-instance v0, Lcom/c/b/b/o;

    invoke-direct {v0}, Lcom/c/b/b/o;-><init>()V

    .line 345
    invoke-virtual {v0, p1}, Lcom/c/b/b/o;->a(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/o;->a(Lorg/apache/c/b/f;)V

    .line 347
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->b()V

    .line 348
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->C()Lorg/apache/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/c/c/b;->a()V

    .line 349
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/c/b/c/g;)V
    .locals 5

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    new-instance v1, Lorg/apache/c/b/e;

    const-string v2, "createNote"

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/b/b/b;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/b/b/b;->c:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/e;)V

    .line 1762
    new-instance v0, Lcom/c/b/b/c;

    invoke-direct {v0}, Lcom/c/b/b/c;-><init>()V

    .line 1763
    invoke-virtual {v0, p1}, Lcom/c/b/b/c;->a(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0, p2}, Lcom/c/b/b/c;->a(Lcom/c/b/c/g;)V

    .line 1765
    iget-object v1, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/c;->a(Lorg/apache/c/b/f;)V

    .line 1766
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->b()V

    .line 1767
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->C()Lorg/apache/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/c/c/b;->a()V

    .line 1768
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/c/b/c/x;)V
    .locals 5

    .prologue
    .line 742
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    new-instance v1, Lorg/apache/c/b/e;

    const-string v2, "createTag"

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/b/b/b;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/b/b/b;->c:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/e;)V

    .line 743
    new-instance v0, Lcom/c/b/b/g;

    invoke-direct {v0}, Lcom/c/b/b/g;-><init>()V

    .line 744
    invoke-virtual {v0, p1}, Lcom/c/b/b/g;->a(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, p2}, Lcom/c/b/b/g;->a(Lcom/c/b/c/x;)V

    .line 746
    iget-object v1, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/g;->a(Lorg/apache/c/b/f;)V

    .line 747
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->b()V

    .line 748
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->C()Lorg/apache/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/c/c/b;->a()V

    .line 749
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/c/b/c/l;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/c/b/b/b;->d(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/c/b/b/b;->b()Lcom/c/b/c/l;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->i()Lorg/apache/c/b/e;

    move-result-object v0

    .line 619
    iget-byte v1, v0, Lorg/apache/c/b/e;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 620
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-static {v0}, Lorg/apache/c/a;->a(Lorg/apache/c/b/f;)Lorg/apache/c/a;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 622
    throw v0

    .line 624
    :cond_0
    iget v0, v0, Lorg/apache/c/b/e;->c:I

    iget v1, p0, Lcom/c/b/b/b;->c:I

    if-eq v0, v1, :cond_1

    .line 625
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x4

    const-string v2, "listTags failed: out of sequence response"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    new-instance v0, Lcom/c/b/b/u;

    invoke-direct {v0}, Lcom/c/b/b/u;-><init>()V

    .line 628
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/u;->a(Lorg/apache/c/b/f;)V

    .line 629
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 630
    invoke-virtual {v0}, Lcom/c/b/b/u;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    invoke-static {v0}, Lcom/c/b/b/u;->c(Lcom/c/b/b/u;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 633
    :cond_2
    invoke-static {v0}, Lcom/c/b/b/u;->d(Lcom/c/b/b/u;)Lcom/c/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 634
    invoke-static {v0}, Lcom/c/b/b/u;->d(Lcom/c/b/b/u;)Lcom/c/b/a/f;

    move-result-object v0

    throw v0

    .line 636
    :cond_3
    invoke-static {v0}, Lcom/c/b/b/u;->e(Lcom/c/b/b/u;)Lcom/c/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 637
    invoke-static {v0}, Lcom/c/b/b/u;->e(Lcom/c/b/b/u;)Lcom/c/b/a/d;

    move-result-object v0

    throw v0

    .line 639
    :cond_4
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x5

    const-string v2, "listTags failed: unknown result"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/c/b/c/x;
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->i()Lorg/apache/c/b/e;

    move-result-object v0

    .line 754
    iget-byte v1, v0, Lorg/apache/c/b/e;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 755
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-static {v0}, Lorg/apache/c/a;->a(Lorg/apache/c/b/f;)Lorg/apache/c/a;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 757
    throw v0

    .line 759
    :cond_0
    iget v0, v0, Lorg/apache/c/b/e;->c:I

    iget v1, p0, Lcom/c/b/b/b;->c:I

    if-eq v0, v1, :cond_1

    .line 760
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x4

    const-string v2, "createTag failed: out of sequence response"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 762
    :cond_1
    new-instance v0, Lcom/c/b/b/i;

    invoke-direct {v0}, Lcom/c/b/b/i;-><init>()V

    .line 763
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/i;->a(Lorg/apache/c/b/f;)V

    .line 764
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 765
    invoke-virtual {v0}, Lcom/c/b/b/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 766
    invoke-static {v0}, Lcom/c/b/b/i;->c(Lcom/c/b/b/i;)Lcom/c/b/c/x;

    move-result-object v0

    return-object v0

    .line 768
    :cond_2
    invoke-static {v0}, Lcom/c/b/b/i;->d(Lcom/c/b/b/i;)Lcom/c/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 769
    invoke-static {v0}, Lcom/c/b/b/i;->d(Lcom/c/b/b/i;)Lcom/c/b/a/f;

    move-result-object v0

    throw v0

    .line 771
    :cond_3
    invoke-static {v0}, Lcom/c/b/b/i;->e(Lcom/c/b/b/i;)Lcom/c/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 772
    invoke-static {v0}, Lcom/c/b/b/i;->e(Lcom/c/b/b/i;)Lcom/c/b/a/d;

    move-result-object v0

    throw v0

    .line 774
    :cond_4
    invoke-static {v0}, Lcom/c/b/b/i;->f(Lcom/c/b/b/i;)Lcom/c/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 775
    invoke-static {v0}, Lcom/c/b/b/i;->f(Lcom/c/b/b/i;)Lcom/c/b/a/b;

    move-result-object v0

    throw v0

    .line 777
    :cond_5
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x5

    const-string v2, "createTag failed: unknown result"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 431
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    new-instance v1, Lorg/apache/c/b/e;

    const-string v2, "getDefaultNotebook"

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/b/b/b;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/b/b/b;->c:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/e;)V

    .line 432
    new-instance v0, Lcom/c/b/b/k;

    invoke-direct {v0}, Lcom/c/b/b/k;-><init>()V

    .line 433
    invoke-virtual {v0, p1}, Lcom/c/b/b/k;->a(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/k;->a(Lorg/apache/c/b/f;)V

    .line 435
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->b()V

    .line 436
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->C()Lorg/apache/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/c/c/b;->a()V

    .line 437
    return-void
.end method

.method public e()Lcom/c/b/c/g;
    .locals 3

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->i()Lorg/apache/c/b/e;

    move-result-object v0

    .line 1773
    iget-byte v1, v0, Lorg/apache/c/b/e;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-static {v0}, Lorg/apache/c/a;->a(Lorg/apache/c/b/f;)Lorg/apache/c/a;

    move-result-object v0

    .line 1775
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 1776
    throw v0

    .line 1778
    :cond_0
    iget v0, v0, Lorg/apache/c/b/e;->c:I

    iget v1, p0, Lcom/c/b/b/b;->c:I

    if-eq v0, v1, :cond_1

    .line 1779
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x4

    const-string v2, "createNote failed: out of sequence response"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1781
    :cond_1
    new-instance v0, Lcom/c/b/b/e;

    invoke-direct {v0}, Lcom/c/b/b/e;-><init>()V

    .line 1782
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/e;->a(Lorg/apache/c/b/f;)V

    .line 1783
    iget-object v1, p0, Lcom/c/b/b/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 1784
    invoke-virtual {v0}, Lcom/c/b/b/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1785
    invoke-static {v0}, Lcom/c/b/b/e;->c(Lcom/c/b/b/e;)Lcom/c/b/c/g;

    move-result-object v0

    return-object v0

    .line 1787
    :cond_2
    invoke-static {v0}, Lcom/c/b/b/e;->d(Lcom/c/b/b/e;)Lcom/c/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1788
    invoke-static {v0}, Lcom/c/b/b/e;->d(Lcom/c/b/b/e;)Lcom/c/b/a/f;

    move-result-object v0

    throw v0

    .line 1790
    :cond_3
    invoke-static {v0}, Lcom/c/b/b/e;->e(Lcom/c/b/b/e;)Lcom/c/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1791
    invoke-static {v0}, Lcom/c/b/b/e;->e(Lcom/c/b/b/e;)Lcom/c/b/a/d;

    move-result-object v0

    throw v0

    .line 1793
    :cond_4
    invoke-static {v0}, Lcom/c/b/b/e;->f(Lcom/c/b/b/e;)Lcom/c/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1794
    invoke-static {v0}, Lcom/c/b/b/e;->f(Lcom/c/b/b/e;)Lcom/c/b/a/b;

    move-result-object v0

    throw v0

    .line 1796
    :cond_5
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x5

    const-string v2, "createNote failed: unknown result"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/c/b/b/b;->f(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/c/b/b/b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 608
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    new-instance v1, Lorg/apache/c/b/e;

    const-string v2, "listTags"

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/b/b/b;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/b/b/b;->c:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/e;)V

    .line 609
    new-instance v0, Lcom/c/b/b/s;

    invoke-direct {v0}, Lcom/c/b/b/s;-><init>()V

    .line 610
    invoke-virtual {v0, p1}, Lcom/c/b/b/s;->a(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/b/s;->a(Lorg/apache/c/b/f;)V

    .line 612
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->b()V

    .line 613
    iget-object v0, p0, Lcom/c/b/b/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->C()Lorg/apache/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/c/c/b;->a()V

    .line 614
    return-void
.end method
