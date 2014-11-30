.class Lcom/dolphin/browser/search/l;
.super Ljava/lang/Object;
.source "SuggestionAdapterBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/dolphin/browser/search/l;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/dolphin/browser/search/l;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/dolphin/browser/search/l;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->j:Lcom/dolphin/browser/search/p;

    invoke-interface {v0, p2}, Lcom/dolphin/browser/search/p;->a(Landroid/view/MotionEvent;)V

    .line 1008
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
