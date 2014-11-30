.class final Lc/a/a/b/n;
.super Lc/a/a/c/m;
.source "GJDayOfWeekDateTimeField.java"


# instance fields
.field private final b:Lc/a/a/b/d;


# direct methods
.method constructor <init>(Lc/a/a/b/d;Lc/a/a/l;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lc/a/a/d;->l()Lc/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc/a/a/c/m;-><init>(Lc/a/a/d;Lc/a/a/l;)V

    .line 47
    iput-object p1, p0, Lc/a/a/b/n;->b:Lc/a/a/b/d;

    .line 48
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc/a/a/b/n;->b:Lc/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/b/d;->g(J)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 91
    invoke-static {p2}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/b/p;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/p;->c()I

    move-result v0

    return v0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p2}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/b/p;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {p2}, Lc/a/a/b/p;->a(Ljava/util/Locale;)Lc/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/b/p;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/a/a/l;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lc/a/a/b/n;->b:Lc/a/a/b/d;

    invoke-virtual {v0}, Lc/a/a/b/d;->w()Lc/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x7

    return v0
.end method
