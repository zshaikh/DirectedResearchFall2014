.class Lc/a/a/b/e;
.super Lc/a/a/c/l;
.source "BasicChronology.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 759
    invoke-static {}, Lc/a/a/d;->k()Lc/a/a/d;

    move-result-object v0

    invoke-static {}, Lc/a/a/b/d;->X()Lc/a/a/l;

    move-result-object v1

    invoke-static {}, Lc/a/a/b/d;->Y()Lc/a/a/l;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c/l;-><init>(Lc/a/a/d;Lc/a/a/l;Lc/a/a/l;)V

    .line 760
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 771
    invoke-static {p1}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/p;->d()I

    move-result v0

    return v0
.end method

.method public a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    .prologue
    .line 767
    invoke-static {p4}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lc/a/a/b/p;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/b/e;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    invoke-static {p2}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/b/p;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
