.class Lcom/dolphin/browser/bookmark/cx;
.super Ljava/lang/Object;
.source "TopPopupView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/cw;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/cw;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cx;->a:Lcom/dolphin/browser/bookmark/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cx;->a:Lcom/dolphin/browser/bookmark/cw;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/cw;->a(Lcom/dolphin/browser/bookmark/cw;)Lcom/dolphin/browser/bookmark/cy;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/bookmark/cy;->a(I)Lcom/dolphin/browser/bookmark/cp;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cp;->c()Lcom/dolphin/browser/c/a;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/dolphin/browser/c/a;->a()Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cx;->a:Lcom/dolphin/browser/bookmark/cw;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cw;->c()V

    .line 69
    return-void
.end method
