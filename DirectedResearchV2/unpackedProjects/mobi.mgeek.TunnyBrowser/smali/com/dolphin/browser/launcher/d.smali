.class Lcom/dolphin/browser/launcher/d;
.super Lcom/g/a/c;
.source "CellLayout.java"


# instance fields
.field a:Z

.field final synthetic b:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/dolphin/browser/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 761
    iput-object p1, p0, Lcom/dolphin/browser/launcher/d;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/d;->b:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/dolphin/browser/launcher/d;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/d;->a:Z

    return-void
.end method


# virtual methods
.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/d;->a:Z

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/dolphin/browser/launcher/d;->b:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 769
    iget-object v0, p0, Lcom/dolphin/browser/launcher/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/d;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(Lcom/dolphin/browser/launcher/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/d;->b:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/dolphin/browser/launcher/d;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(Lcom/dolphin/browser/launcher/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/d;->b:Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_1
    return-void
.end method

.method public d(Lcom/g/a/a;)V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/d;->a:Z

    .line 777
    return-void
.end method
