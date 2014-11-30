.class final Lcom/dolphin/browser/sidebar/d;
.super Ljava/lang/Object;
.source "AddonBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/dolphin/browser/extensions/p;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/a;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/sidebar/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/sidebar/a;Lcom/dolphin/browser/sidebar/b;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/d;-><init>(Lcom/dolphin/browser/sidebar/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/a;->b()V

    .line 83
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/a;->b()V

    .line 78
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/a;->a(Lcom/dolphin/browser/sidebar/a;Ljava/util/List;)Ljava/util/List;

    .line 115
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/a;->a(Lcom/dolphin/browser/sidebar/a;)Ljava/util/List;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 102
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sidebar/e;

    .line 103
    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/e;->a()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/sidebar/a;->a(Lcom/dolphin/browser/sidebar/a;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

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
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/sidebar/a;->a(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/d;->a:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/sidebar/a;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
