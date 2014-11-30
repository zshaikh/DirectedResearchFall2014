.class Lcom/dolphin/browser/search/ui/o;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/o;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v2, 0x1

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/o;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/search/a;->a(I)Lcom/dolphin/browser/search/w;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/o;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    iget-object v0, v0, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/o;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0, v2, v2}, Lcom/dolphin/browser/search/ui/c;->a(IZ)Z

    .line 193
    :cond_0
    return-void
.end method
