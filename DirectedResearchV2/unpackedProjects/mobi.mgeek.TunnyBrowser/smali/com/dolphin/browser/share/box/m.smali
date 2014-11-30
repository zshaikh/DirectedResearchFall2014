.class Lcom/dolphin/browser/share/box/m;
.super Ljava/lang/Object;
.source "UploadPathDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/j;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dolphin/browser/share/box/m;->a:Lcom/dolphin/browser/share/box/j;

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
    .line 122
    check-cast p2, Lcom/dolphin/browser/share/box/a;

    .line 123
    invoke-virtual {p2}, Lcom/dolphin/browser/share/box/a;->a()Lcom/b/a/a/b;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/share/box/m;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v1, v0}, Lcom/dolphin/browser/share/box/j;->a(Lcom/dolphin/browser/share/box/j;Lcom/b/a/a/b;)Lcom/b/a/a/b;

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/share/box/m;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/j;->b(Lcom/dolphin/browser/share/box/j;)V

    .line 126
    return-void
.end method
