.class Lcom/dolphin/browser/search/m;
.super Ljava/lang/Object;
.source "SuggestionAdapterBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/dolphin/browser/search/m;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1430
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1431
    instance-of v0, v1, Lcom/dolphin/browser/search/w;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/dolphin/browser/search/m;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/dolphin/browser/search/m;->a:Lcom/dolphin/browser/search/k;

    iget-object v2, v0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/search/w;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/search/w;->a(Z)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/dolphin/browser/search/w;

    iget v1, v1, Lcom/dolphin/browser/search/w;->d:I

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;IZ)V

    .line 1437
    :cond_0
    return-void
.end method
