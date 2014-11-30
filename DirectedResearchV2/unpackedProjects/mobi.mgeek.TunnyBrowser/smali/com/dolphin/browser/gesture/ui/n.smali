.class final Lcom/dolphin/browser/gesture/ui/n;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 662
    if-nez p1, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 665
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 666
    goto :goto_0

    .line 668
    :cond_2
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 669
    aget-object v4, v3, v2

    .line 670
    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 671
    const-string v3, "-"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 672
    aget-object v6, v3, v2

    .line 673
    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 674
    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 675
    if-nez v3, :cond_4

    .line 676
    if-lt v5, v7, :cond_0

    .line 678
    if-le v5, v7, :cond_3

    move v0, v1

    .line 679
    goto :goto_0

    :cond_3
    move v0, v2

    .line 681
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 659
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/gesture/ui/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
