.class Lc/a/a/d/ae;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/ah;


# instance fields
.field private final a:Lc/a/a/d/ah;

.field private final b:Lc/a/a/d/ah;


# direct methods
.method constructor <init>(Lc/a/a/d/ah;Lc/a/a/d/ah;)V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lc/a/a/d/ae;->a:Lc/a/a/d/ah;

    .line 993
    iput-object p2, p0, Lc/a/a/d/ae;->b:Lc/a/a/d/ah;

    .line 994
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lc/a/a/d/ae;->a:Lc/a/a/d/ah;

    invoke-interface {v0, p1}, Lc/a/a/d/ah;->a(I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/d/ae;->b:Lc/a/a/d/ah;

    invoke-interface {v1, p1}, Lc/a/a/d/ah;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lc/a/a/d/ae;->a:Lc/a/a/d/ah;

    invoke-interface {v0, p1, p2}, Lc/a/a/d/ah;->a(Ljava/lang/StringBuffer;I)V

    .line 1003
    iget-object v0, p0, Lc/a/a/d/ae;->b:Lc/a/a/d/ah;

    invoke-interface {v0, p1, p2}, Lc/a/a/d/ah;->a(Ljava/lang/StringBuffer;I)V

    .line 1004
    return-void
.end method
