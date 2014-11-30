.class public Lc/a/a/d/ab;
.super Ljava/lang/Object;
.source "PeriodFormatter.java"


# instance fields
.field private final a:Lc/a/a/d/al;

.field private final b:Lc/a/a/d/ak;

.field private final c:Ljava/util/Locale;

.field private final d:Lc/a/a/u;


# direct methods
.method public constructor <init>(Lc/a/a/d/al;Lc/a/a/d/ak;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lc/a/a/d/ab;->a:Lc/a/a/d/al;

    .line 89
    iput-object p2, p0, Lc/a/a/d/ab;->b:Lc/a/a/d/ak;

    .line 90
    iput-object v0, p0, Lc/a/a/d/ab;->c:Ljava/util/Locale;

    .line 91
    iput-object v0, p0, Lc/a/a/d/ab;->d:Lc/a/a/u;

    .line 92
    return-void
.end method

.method private constructor <init>(Lc/a/a/d/al;Lc/a/a/d/ak;Ljava/util/Locale;Lc/a/a/u;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lc/a/a/d/ab;->a:Lc/a/a/d/al;

    .line 107
    iput-object p2, p0, Lc/a/a/d/ab;->b:Lc/a/a/d/ak;

    .line 108
    iput-object p3, p0, Lc/a/a/d/ab;->c:Ljava/util/Locale;

    .line 109
    iput-object p4, p0, Lc/a/a/d/ab;->d:Lc/a/a/u;

    .line 110
    return-void
.end method

.method private b(Lc/a/a/z;)V
    .locals 2

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Period must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lc/a/a/d/ab;->a:Lc/a/a/d/al;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/u;)Lc/a/a/d/ab;
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lc/a/a/d/ab;->d:Lc/a/a/u;

    if-ne p1, v0, :cond_0

    .line 190
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lc/a/a/d/ab;

    iget-object v1, p0, Lc/a/a/d/ab;->a:Lc/a/a/d/al;

    iget-object v2, p0, Lc/a/a/d/ab;->b:Lc/a/a/d/ak;

    iget-object v3, p0, Lc/a/a/d/ab;->c:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, p1}, Lc/a/a/d/ab;-><init>(Lc/a/a/d/al;Lc/a/a/d/ak;Ljava/util/Locale;Lc/a/a/u;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a()Lc/a/a/d/al;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc/a/a/d/ab;->a:Lc/a/a/d/al;

    return-object v0
.end method

.method public a(Lc/a/a/z;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    invoke-direct {p0}, Lc/a/a/d/ab;->c()V

    .line 237
    invoke-direct {p0, p1}, Lc/a/a/d/ab;->b(Lc/a/a/z;)V

    .line 239
    invoke-virtual {p0}, Lc/a/a/d/ab;->a()Lc/a/a/d/al;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc/a/a/d/ab;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, v2}, Lc/a/a/d/al;->a(Lc/a/a/z;Ljava/util/Locale;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 241
    iget-object v2, p0, Lc/a/a/d/ab;->c:Ljava/util/Locale;

    invoke-interface {v0, v1, p1, v2}, Lc/a/a/d/al;->a(Ljava/lang/StringBuffer;Lc/a/a/z;Ljava/util/Locale;)V

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/a/a/d/ak;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc/a/a/d/ab;->b:Lc/a/a/d/ak;

    return-object v0
.end method
