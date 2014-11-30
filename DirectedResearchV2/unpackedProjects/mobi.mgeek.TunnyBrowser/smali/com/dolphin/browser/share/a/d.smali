.class Lcom/dolphin/browser/share/a/d;
.super Ljava/lang/Object;
.source "EvernoteAddTagDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/a;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dolphin/browser/share/a/d;->a:Lcom/dolphin/browser/share/a/a;

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
    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/share/a/d;->a:Lcom/dolphin/browser/share/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/a;->a(Lcom/dolphin/browser/share/a/a;)Lcom/dolphin/browser/share/a/t;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/share/a/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/x;

    .line 236
    invoke-virtual {v0}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/dolphin/browser/share/a/d;->a:Lcom/dolphin/browser/share/a/a;

    invoke-static {v2}, Lcom/dolphin/browser/share/a/a;->a(Lcom/dolphin/browser/share/a/a;)Lcom/dolphin/browser/share/a/t;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/share/a/t;->a(Ljava/lang/String;Z)V

    .line 239
    return-void
.end method
