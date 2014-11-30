.class Lcom/dolphin/browser/gesture/x;
.super Ljava/lang/Object;
.source "GestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/GestureView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/GestureView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/dolphin/browser/gesture/x;->a:Lcom/dolphin/browser/gesture/GestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/gesture/x;->a:Lcom/dolphin/browser/gesture/GestureView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureView;->k()V

    .line 403
    iget-object v0, p0, Lcom/dolphin/browser/gesture/x;->a:Lcom/dolphin/browser/gesture/GestureView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureView;->invalidate()V

    .line 404
    return-void
.end method
