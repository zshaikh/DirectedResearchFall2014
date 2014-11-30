.class Lcom/dolphin/browser/push/an;
.super Lcom/dolphin/browser/push/ar;
.source "PushProcessor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/dolphin/browser/push/an;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ar;-><init>(Lcom/dolphin/browser/push/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    .locals 1

    .prologue
    .line 709
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/push/ar;->a(Lorg/b/a/a/c;Lorg/b/a/d;)V

    .line 710
    iget-object v0, p0, Lcom/dolphin/browser/push/an;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->l()V

    .line 711
    return-void
.end method
