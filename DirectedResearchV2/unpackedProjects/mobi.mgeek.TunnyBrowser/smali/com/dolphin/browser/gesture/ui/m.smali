.class Lcom/dolphin/browser/gesture/ui/m;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Lcom/dolphin/browser/gesture/n;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/m;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/m;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->h(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/GestureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->setVisibility(I)V

    .line 466
    return-void
.end method

.method public b(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public c(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public d(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
