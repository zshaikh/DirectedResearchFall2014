.class Lcom/dolphin/browser/gesture/ui/r;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Lcom/dolphin/browser/gesture/n;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/ui/d;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/r;-><init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/Gesture;)Lcom/dolphin/browser/gesture/Gesture;

    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0, v2}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Z)Z

    .line 439
    return-void
.end method

.method public b(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public c(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 447
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->b()Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/Gesture;)Lcom/dolphin/browser/gesture/Gesture;

    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/Gesture;->c()F

    move-result v0

    const/high16 v1, 0x42f00000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 449
    invoke-virtual {p1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/r;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public d(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method
