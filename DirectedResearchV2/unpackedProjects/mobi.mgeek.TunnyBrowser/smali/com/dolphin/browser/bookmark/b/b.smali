.class Lcom/dolphin/browser/bookmark/b/b;
.super Ljava/lang/Object;
.source "BaseItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/b/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/b/a;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/b;->a:Lcom/dolphin/browser/bookmark/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/b;->a:Lcom/dolphin/browser/bookmark/b/a;

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/b;->a:Lcom/dolphin/browser/bookmark/b/a;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/a;->a(Z)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
