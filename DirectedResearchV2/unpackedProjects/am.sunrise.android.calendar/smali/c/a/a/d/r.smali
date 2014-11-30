.class Lc/a/a/d/r;
.super Lc/a/a/d/j;
.source "DateTimeFormatterBuilder.java"


# direct methods
.method protected constructor <init>(Lc/a/a/d;IZ)V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/d/j;-><init>(Lc/a/a/d;IZ)V

    .line 1402
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lc/a/a/d/r;->b:I

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;JLc/a/a/a;ILc/a/a/i;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1412
    :try_start_0
    iget-object v0, p0, Lc/a/a/d/r;->a:Lc/a/a/d;

    invoke-virtual {v0, p4}, Lc/a/a/d;->a(Lc/a/a/a;)Lc/a/a/c;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, p2, p3}, Lc/a/a/c;->a(J)I

    move-result v0

    invoke-static {p1, v0}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
