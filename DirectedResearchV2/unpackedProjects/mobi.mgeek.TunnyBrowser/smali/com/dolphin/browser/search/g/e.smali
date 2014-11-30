.class Lcom/dolphin/browser/search/g/e;
.super Ljava/lang/Object;
.source "SearchUrlModifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/search/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/g/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/g/d;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/search/g/e;->a:Lcom/dolphin/browser/search/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/search/g/f;Lcom/dolphin/browser/search/g/f;)I
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p2}, Lcom/dolphin/browser/search/g/f;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/search/g/f;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/dolphin/browser/search/g/f;

    check-cast p2, Lcom/dolphin/browser/search/g/f;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/search/g/e;->a(Lcom/dolphin/browser/search/g/f;Lcom/dolphin/browser/search/g/f;)I

    move-result v0

    return v0
.end method
