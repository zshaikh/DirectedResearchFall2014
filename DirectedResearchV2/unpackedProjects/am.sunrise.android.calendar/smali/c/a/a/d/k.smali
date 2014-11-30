.class Lc/a/a/d/k;
.super Lc/a/a/d/j;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field protected final d:I


# direct methods
.method protected constructor <init>(Lc/a/a/d;IZI)V
    .locals 0

    .prologue
    .line 1463
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/d/j;-><init>(Lc/a/a/d;IZ)V

    .line 1464
    iput p4, p0, Lc/a/a/d/k;->d:I

    .line 1465
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1468
    iget v0, p0, Lc/a/a/d/k;->b:I

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;JLc/a/a/a;ILc/a/a/i;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1475
    :try_start_0
    iget-object v0, p0, Lc/a/a/d/k;->a:Lc/a/a/d;

    invoke-virtual {v0, p4}, Lc/a/a/d;->a(Lc/a/a/a;)Lc/a/a/c;

    move-result-object v0

    .line 1476
    invoke-virtual {v0, p2, p3}, Lc/a/a/c;->a(J)I

    move-result v0

    iget v1, p0, Lc/a/a/d/k;->d:I

    invoke-static {p1, v0, v1}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    iget v0, p0, Lc/a/a/d/k;->d:I

    invoke-static {p1, v0}, Lc/a/a/d/d;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method
