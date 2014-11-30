.class final Lcom/dolphin/browser/extensions/bi;
.super Ljava/lang/Object;
.source "ShareAddons.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/extensions/n;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/extensions/n;Lcom/dolphin/browser/extensions/n;)I
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 87
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/n;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/IShareExtension;

    .line 88
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IShareExtension;->getOrder()I

    move-result v0

    invoke-interface {v1}, Lcom/dolphin/browser/extensions/IShareExtension;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/dolphin/browser/extensions/n;

    check-cast p2, Lcom/dolphin/browser/extensions/n;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/extensions/bi;->a(Lcom/dolphin/browser/extensions/n;Lcom/dolphin/browser/extensions/n;)I

    move-result v0

    return v0
.end method
