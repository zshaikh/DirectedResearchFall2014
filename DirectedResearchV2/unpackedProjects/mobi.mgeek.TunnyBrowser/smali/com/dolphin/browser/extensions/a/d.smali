.class Lcom/dolphin/browser/extensions/a/d;
.super Lcom/dolphin/browser/util/f;
.source "PromotedContentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/a/c;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/extensions/a/c;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/extensions/a/d;->a:Lcom/dolphin/browser/extensions/a/c;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/d;->a:Lcom/dolphin/browser/extensions/a/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/c;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/a/d;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/d;->a:Lcom/dolphin/browser/extensions/a/c;

    invoke-static {v1, v0}, Lcom/dolphin/browser/extensions/a/c;->a(Lcom/dolphin/browser/extensions/a/c;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/d;->a:Lcom/dolphin/browser/extensions/a/c;

    invoke-static {v1}, Lcom/dolphin/browser/extensions/a/c;->a(Lcom/dolphin/browser/extensions/a/c;)V

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/d;->a:Lcom/dolphin/browser/extensions/a/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/a/c;->notifyObservers(Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/a/d;->a(Ljava/lang/Integer;)V

    return-void
.end method
