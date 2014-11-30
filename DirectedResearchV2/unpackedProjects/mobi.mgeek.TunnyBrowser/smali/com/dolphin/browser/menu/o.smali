.class Lcom/dolphin/browser/menu/o;
.super Ljava/lang/Object;
.source "ListMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/l;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/dolphin/browser/menu/o;->a:Lcom/dolphin/browser/menu/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 510
    iget-object v0, p0, Lcom/dolphin/browser/menu/o;->a:Lcom/dolphin/browser/menu/l;

    invoke-static {v0}, Lcom/dolphin/browser/menu/l;->b(Lcom/dolphin/browser/menu/l;)Lcom/dolphin/browser/menu/q;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/menu/q;->a(I)Lcom/dolphin/browser/menu/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->a()Lcom/dolphin/browser/c/a;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    .line 514
    :cond_0
    return-void
.end method
