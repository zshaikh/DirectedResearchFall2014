.class Lcom/dolphin/browser/gesture/a/c;
.super Ljava/lang/Object;
.source "Action.java"

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
        "Lcom/dolphin/browser/gesture/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/a/b;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/a/a;Lcom/dolphin/browser/gesture/a/a;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 82
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p2}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v2, :cond_0

    .line 93
    if-nez v3, :cond_3

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 76
    check-cast p1, Lcom/dolphin/browser/gesture/a/a;

    check-cast p2, Lcom/dolphin/browser/gesture/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/gesture/a/c;->a(Lcom/dolphin/browser/gesture/a/a;Lcom/dolphin/browser/gesture/a/a;)I

    move-result v0

    return v0
.end method
