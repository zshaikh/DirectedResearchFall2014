.class Lcom/dolphin/browser/push/ak;
.super Lcom/dolphin/browser/push/ar;
.source "PushProcessor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/dolphin/browser/push/ak;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ar;-><init>(Lcom/dolphin/browser/push/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 682
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/push/ar;->a(Lorg/b/a/a/c;Lorg/b/a/d;)V

    .line 683
    iget-object v0, p0, Lcom/dolphin/browser/push/ak;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/push/ag;->b(Lorg/b/a/d;)V

    .line 684
    return-void
.end method
