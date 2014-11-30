.class Lcom/dolphin/browser/core/o;
.super Ljava/lang/Object;
.source "MixedTab.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/core/WebViewTab;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/WebViewTab;Lcom/dolphin/browser/core/WebViewTab;)I
    .locals 4

    .prologue
    .line 92
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 95
    iget-wide v0, p2, Lcom/dolphin/browser/core/an;->o:J

    iget-wide v2, p1, Lcom/dolphin/browser/core/an;->o:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 101
    :goto_0
    return v0

    .line 96
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 99
    const/4 v0, -0x1

    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 88
    check-cast p1, Lcom/dolphin/browser/core/WebViewTab;

    check-cast p2, Lcom/dolphin/browser/core/WebViewTab;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/core/o;->a(Lcom/dolphin/browser/core/WebViewTab;Lcom/dolphin/browser/core/WebViewTab;)I

    move-result v0

    return v0
.end method
