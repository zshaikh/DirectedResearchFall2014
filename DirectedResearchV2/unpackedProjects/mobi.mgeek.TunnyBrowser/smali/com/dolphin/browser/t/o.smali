.class Lcom/dolphin/browser/t/o;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/dolphin/browser/t/o;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 974
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 975
    iget-object v0, p0, Lcom/dolphin/browser/t/o;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;)V

    .line 977
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
