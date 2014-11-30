.class Lcom/dolphin/browser/share/a/m;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dolphin/browser/share/a/m;->a:Lcom/dolphin/browser/share/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/share/a/m;->a:Lcom/dolphin/browser/share/a/k;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/k;->c(Lcom/dolphin/browser/share/a/k;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
