.class public Lc/a/a/d/aa;
.super Ljava/lang/Object;
.source "ISOPeriodFormat.java"


# static fields
.field private static a:Lc/a/a/d/ab;


# direct methods
.method public static a()Lc/a/a/d/ab;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lc/a/a/d/aa;->a:Lc/a/a/d/ab;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lc/a/a/d/ac;

    invoke-direct {v0}, Lc/a/a/d/ac;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->a(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->c()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->d()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->e()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->f()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->c(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->g()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->h()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->i()Lc/a/a/d/ac;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lc/a/a/d/ac;->b(Ljava/lang/String;)Lc/a/a/d/ac;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/ac;->a()Lc/a/a/d/ab;

    move-result-object v0

    sput-object v0, Lc/a/a/d/aa;->a:Lc/a/a/d/ab;

    .line 85
    :cond_0
    sget-object v0, Lc/a/a/d/aa;->a:Lc/a/a/d/ab;

    return-object v0
.end method
