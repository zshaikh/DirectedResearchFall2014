.class Lcom/dolphin/browser/gesture/ui/t;
.super Ljava/lang/Object;
.source "GestureListActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/t;->b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/t;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/t;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 428
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
