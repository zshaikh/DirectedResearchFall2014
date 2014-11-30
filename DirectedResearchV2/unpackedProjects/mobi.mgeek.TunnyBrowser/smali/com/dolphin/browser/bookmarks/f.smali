.class public Lcom/dolphin/browser/bookmarks/f;
.super Ljava/util/ArrayList;
.source "BookmarkManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/dolphin/browser/bookmarks/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 546
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 547
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmarks/f;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmarks/a;

    .line 548
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/a;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 546
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 550
    :cond_0
    return-object v2
.end method
