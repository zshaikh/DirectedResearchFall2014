.class Lc/a/a/d/ag;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/ak;
.implements Lc/a/a/d/al;


# static fields
.field static final a:Lc/a/a/d/ag;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Lc/a/a/d/ag;

    const-string v1, ""

    invoke-direct {v0, v1}, Lc/a/a/d/ag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/a/a/d/ag;->a:Lc/a/a/d/ag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    iput-object p1, p0, Lc/a/a/d/ag;->b:Ljava/lang/String;

    .line 1550
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/z;ILjava/util/Locale;)I
    .locals 1

    .prologue
    .line 1553
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lc/a/a/z;Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lc/a/a/d/ag;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Lc/a/a/z;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lc/a/a/d/ag;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1562
    return-void
.end method
