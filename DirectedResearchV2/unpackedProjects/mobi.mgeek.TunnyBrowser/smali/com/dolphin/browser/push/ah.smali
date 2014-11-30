.class Lcom/dolphin/browser/push/ah;
.super Lcom/dolphin/browser/push/ar;
.source "PushProcessor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/dolphin/browser/push/ah;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ar;-><init>(Lcom/dolphin/browser/push/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/push/ar;->a(Lorg/b/a/a/c;Lorg/b/a/d;)V

    .line 578
    iget-object v0, p0, Lcom/dolphin/browser/push/ah;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/push/ag;->a(Lorg/b/a/d;)V

    .line 579
    return-void
.end method
