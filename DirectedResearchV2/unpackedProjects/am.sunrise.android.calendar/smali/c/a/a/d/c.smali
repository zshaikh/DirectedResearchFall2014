.class public Lc/a/a/d/c;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# instance fields
.field private final a:Lc/a/a/d/w;

.field private final b:Lc/a/a/d/s;

.field private final c:Ljava/util/Locale;

.field private final d:Z

.field private final e:Lc/a/a/a;

.field private final f:Lc/a/a/i;

.field private final g:Ljava/lang/Integer;

.field private final h:I


# direct methods
.method public constructor <init>(Lc/a/a/d/w;Lc/a/a/d/s;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lc/a/a/d/c;->a:Lc/a/a/d/w;

    .line 120
    iput-object p2, p0, Lc/a/a/d/c;->b:Lc/a/a/d/s;

    .line 121
    iput-object v1, p0, Lc/a/a/d/c;->c:Ljava/util/Locale;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/d/c;->d:Z

    .line 123
    iput-object v1, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    .line 124
    iput-object v1, p0, Lc/a/a/d/c;->f:Lc/a/a/i;

    .line 125
    iput-object v1, p0, Lc/a/a/d/c;->g:Ljava/lang/Integer;

    .line 126
    const/16 v0, 0x7d0

    iput v0, p0, Lc/a/a/d/c;->h:I

    .line 127
    return-void
.end method

.method private constructor <init>(Lc/a/a/d/w;Lc/a/a/d/s;Ljava/util/Locale;ZLc/a/a/a;Lc/a/a/i;Ljava/lang/Integer;I)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lc/a/a/d/c;->a:Lc/a/a/d/w;

    .line 139
    iput-object p2, p0, Lc/a/a/d/c;->b:Lc/a/a/d/s;

    .line 140
    iput-object p3, p0, Lc/a/a/d/c;->c:Ljava/util/Locale;

    .line 141
    iput-boolean p4, p0, Lc/a/a/d/c;->d:Z

    .line 142
    iput-object p5, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    .line 143
    iput-object p6, p0, Lc/a/a/d/c;->f:Lc/a/a/i;

    .line 144
    iput-object p7, p0, Lc/a/a/d/c;->g:Ljava/lang/Integer;

    .line 145
    iput p8, p0, Lc/a/a/d/c;->h:I

    .line 146
    return-void
.end method

.method private a(Ljava/lang/StringBuffer;JLc/a/a/a;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 628
    invoke-direct {p0}, Lc/a/a/d/c;->d()Lc/a/a/d/w;

    move-result-object v0

    .line 629
    invoke-direct {p0, p4}, Lc/a/a/d/c;->b(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Lc/a/a/a;->a()Lc/a/a/i;

    move-result-object v6

    .line 633
    invoke-virtual {v6, p2, p3}, Lc/a/a/i;->b(J)I

    move-result v5

    .line 634
    int-to-long v2, v5

    add-long/2addr v2, p2

    .line 635
    xor-long v7, p2, v2

    cmp-long v4, v7, v9

    if-gez v4, :cond_0

    int-to-long v7, v5

    xor-long/2addr v7, p2

    cmp-long v4, v7, v9

    if-ltz v4, :cond_0

    .line 637
    sget-object v6, Lc/a/a/i;->a:Lc/a/a/i;

    .line 638
    const/4 v5, 0x0

    move-wide v2, p2

    .line 641
    :cond_0
    invoke-virtual {v1}, Lc/a/a/a;->b()Lc/a/a/a;

    move-result-object v4

    iget-object v7, p0, Lc/a/a/d/c;->c:Ljava/util/Locale;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lc/a/a/d/w;->a(Ljava/lang/StringBuffer;JLc/a/a/a;ILc/a/a/i;Ljava/util/Locale;)V

    .line 642
    return-void
.end method

.method private b(Lc/a/a/a;)Lc/a/a/a;
    .locals 2

    .prologue
    .line 951
    invoke-static {p1}, Lc/a/a/f;->a(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    if-eqz v1, :cond_0

    .line 953
    iget-object v0, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    .line 955
    :cond_0
    iget-object v1, p0, Lc/a/a/d/c;->f:Lc/a/a/i;

    if-eqz v1, :cond_1

    .line 956
    iget-object v1, p0, Lc/a/a/d/c;->f:Lc/a/a/i;

    invoke-virtual {v0, v1}, Lc/a/a/a;->a(Lc/a/a/i;)Lc/a/a/a;

    move-result-object v0

    .line 958
    :cond_1
    return-object v0
.end method

.method private d()Lc/a/a/d/w;
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lc/a/a/d/c;->a:Lc/a/a/d/w;

    .line 668
    if-nez v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    return-object v0
.end method

.method private e()Lc/a/a/d/s;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lc/a/a/d/c;->b:Lc/a/a/d/s;

    .line 937
    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 751
    invoke-direct {p0}, Lc/a/a/d/c;->e()Lc/a/a/d/s;

    move-result-object v7

    .line 753
    iget-object v0, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    invoke-direct {p0, v0}, Lc/a/a/d/c;->b(Lc/a/a/a;)Lc/a/a/a;

    move-result-object v3

    .line 754
    new-instance v0, Lc/a/a/d/t;

    const-wide/16 v1, 0x0

    iget-object v4, p0, Lc/a/a/d/c;->c:Ljava/util/Locale;

    iget-object v5, p0, Lc/a/a/d/c;->g:Ljava/lang/Integer;

    iget v6, p0, Lc/a/a/d/c;->h:I

    invoke-direct/range {v0 .. v6}, Lc/a/a/d/t;-><init>(JLc/a/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 755
    const/4 v1, 0x0

    invoke-interface {v7, v0, p1, v1}, Lc/a/a/d/s;->a(Lc/a/a/d/t;Ljava/lang/String;I)I

    move-result v1

    .line 756
    if-ltz v1, :cond_0

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 758
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lc/a/a/d/t;->a(ZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 761
    :cond_0
    xor-int/lit8 v0, v1, -0x1

    .line 763
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lc/a/a/d/x;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lc/a/a/a;)Lc/a/a/d/c;
    .locals 9

    .prologue
    .line 266
    iget-object v0, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    if-ne v0, p1, :cond_0

    .line 269
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/d/c;->a:Lc/a/a/d/w;

    iget-object v2, p0, Lc/a/a/d/c;->b:Lc/a/a/d/s;

    iget-object v3, p0, Lc/a/a/d/c;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lc/a/a/d/c;->d:Z

    iget-object v6, p0, Lc/a/a/d/c;->f:Lc/a/a/i;

    iget-object v7, p0, Lc/a/a/d/c;->g:Ljava/lang/Integer;

    iget v8, p0, Lc/a/a/d/c;->h:I

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lc/a/a/d/c;-><init>(Lc/a/a/d/w;Lc/a/a/d/s;Ljava/util/Locale;ZLc/a/a/a;Lc/a/a/i;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Lc/a/a/i;)Lc/a/a/d/c;
    .locals 9

    .prologue
    .line 330
    iget-object v0, p0, Lc/a/a/d/c;->f:Lc/a/a/i;

    if-ne v0, p1, :cond_0

    .line 333
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/d/c;->a:Lc/a/a/d/w;

    iget-object v2, p0, Lc/a/a/d/c;->b:Lc/a/a/d/s;

    iget-object v3, p0, Lc/a/a/d/c;->c:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v5, p0, Lc/a/a/d/c;->e:Lc/a/a/a;

    iget-object v7, p0, Lc/a/a/d/c;->g:Ljava/lang/Integer;

    iget v8, p0, Lc/a/a/d/c;->h:I

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lc/a/a/d/c;-><init>(Lc/a/a/d/w;Lc/a/a/d/s;Ljava/util/Locale;ZLc/a/a/a;Lc/a/a/i;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a()Lc/a/a/d/w;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc/a/a/d/c;->a:Lc/a/a/d/w;

    return-object v0
.end method

.method public a(Lc/a/a/y;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lc/a/a/d/c;->d()Lc/a/a/d/w;

    move-result-object v1

    invoke-interface {v1}, Lc/a/a/d/w;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 593
    invoke-virtual {p0, v0, p1}, Lc/a/a/d/c;->a(Ljava/lang/StringBuffer;Lc/a/a/y;)V

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/StringBuffer;Lc/a/a/y;)V
    .locals 3

    .prologue
    .line 469
    invoke-static {p2}, Lc/a/a/f;->a(Lc/a/a/y;)J

    move-result-wide v0

    .line 470
    invoke-static {p2}, Lc/a/a/f;->b(Lc/a/a/y;)Lc/a/a/a;

    move-result-object v2

    .line 471
    invoke-direct {p0, p1, v0, v1, v2}, Lc/a/a/d/c;->a(Ljava/lang/StringBuffer;JLc/a/a/a;)V

    .line 472
    return-void
.end method

.method public b()Lc/a/a/d/s;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lc/a/a/d/c;->b:Lc/a/a/d/s;

    return-object v0
.end method

.method public c()Lc/a/a/d/c;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    invoke-virtual {p0, v0}, Lc/a/a/d/c;->a(Lc/a/a/i;)Lc/a/a/d/c;

    move-result-object v0

    return-object v0
.end method
