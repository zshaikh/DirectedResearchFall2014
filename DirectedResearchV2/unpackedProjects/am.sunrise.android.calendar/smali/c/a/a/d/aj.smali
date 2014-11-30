.class Lc/a/a/d/aj;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/ah;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object p1, p0, Lc/a/a/d/aj;->a:Ljava/lang/String;

    .line 861
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lc/a/a/d/aj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lc/a/a/d/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    return-void
.end method
