.class final Lcom/g/a/ac;
.super Lcom/g/b/a;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/b/a",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/g/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Lcom/g/c/a/a;->a(Landroid/view/View;)Lcom/g/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/g/c/a/a;->l()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/g/a/ac;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lcom/g/c/a/a;->a(Landroid/view/View;)Lcom/g/c/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/g/c/a/a;->i(F)V

    .line 47
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/g/a/ac;->a(Landroid/view/View;F)V

    return-void
.end method
