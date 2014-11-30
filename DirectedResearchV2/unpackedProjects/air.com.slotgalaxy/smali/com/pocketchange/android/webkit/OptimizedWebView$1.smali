.class Lcom/pocketchange/android/webkit/OptimizedWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/OptimizedWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/webkit/OptimizedWebView;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$1;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 58
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 64
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
