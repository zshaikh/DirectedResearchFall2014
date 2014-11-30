.class Lcom/dolphin/browser/push/ap;
.super Lcom/dolphin/browser/push/ar;
.source "PushProcessor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/dolphin/browser/push/ap;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ar;-><init>(Lcom/dolphin/browser/push/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 741
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/push/ar;->a(Lorg/b/a/a/c;Lorg/b/a/d;)V

    .line 742
    iget-object v0, p0, Lcom/dolphin/browser/push/ap;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->n()V

    .line 743
    return-void
.end method
