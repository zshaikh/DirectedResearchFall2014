.class Lcom/dolphin/browser/launcher/e;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/launcher/bi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/bi;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    .line 177
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 178
    iget v1, p2, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 179
    int-to-long v2, v0

    iget-wide v4, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 180
    int-to-long v1, v1

    iget-wide v3, p2, Lcom/dolphin/browser/launcher/bi;->f:J

    mul-long/2addr v3, v6

    add-long/2addr v1, v3

    long-to-int v1, v1

    .line 181
    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 171
    check-cast p1, Lcom/dolphin/browser/launcher/bi;

    check-cast p2, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/launcher/e;->a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/bi;)I

    move-result v0

    return v0
.end method
