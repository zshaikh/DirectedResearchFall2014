.class Lcom/dolphin/browser/promoted/g;
.super Lcom/dolphin/browser/util/f;
.source "PromotedAppManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/promoted/f;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/promoted/f;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/promoted/g;->a:Lcom/dolphin/browser/promoted/f;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/promoted/g;->a:Lcom/dolphin/browser/promoted/f;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/f;->a(Lcom/dolphin/browser/promoted/f;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/promoted/g;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/promoted/g;->a:Lcom/dolphin/browser/promoted/f;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/f;->b(Lcom/dolphin/browser/promoted/f;)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/promoted/g;->a:Lcom/dolphin/browser/promoted/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->notifyObservers()V

    .line 85
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/promoted/g;->a(Ljava/lang/Boolean;)V

    return-void
.end method
