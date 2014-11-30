.class final Lcom/dolphin/browser/share/b/l;
.super Ljava/lang/Object;
.source "SharePlatform.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/share/b/k;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/b/l;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/share/b/k;Lcom/dolphin/browser/share/b/k;)I
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/share/b/l;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/dolphin/browser/share/b/k;

    check-cast p2, Lcom/dolphin/browser/share/b/k;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/share/b/l;->a(Lcom/dolphin/browser/share/b/k;Lcom/dolphin/browser/share/b/k;)I

    move-result v0

    return v0
.end method
