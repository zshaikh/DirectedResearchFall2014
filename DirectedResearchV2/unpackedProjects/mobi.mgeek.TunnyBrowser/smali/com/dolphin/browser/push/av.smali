.class Lcom/dolphin/browser/push/av;
.super Lcom/dolphin/browser/push/ar;
.source "PushProcessor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;

.field private c:Lcom/dolphin/browser/push/as;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;Lcom/dolphin/browser/push/as;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/dolphin/browser/push/av;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ar;-><init>(Lcom/dolphin/browser/push/ag;)V

    .line 316
    iput-object p2, p0, Lcom/dolphin/browser/push/av;->c:Lcom/dolphin/browser/push/as;

    .line 317
    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/push/ar;->a(Lorg/b/a/a/c;Lorg/b/a/d;)V

    .line 322
    iget-object v0, p0, Lcom/dolphin/browser/push/av;->a:Lcom/dolphin/browser/push/ag;

    iget-object v1, p0, Lcom/dolphin/browser/push/av;->c:Lcom/dolphin/browser/push/as;

    invoke-virtual {v0, p2, v1}, Lcom/dolphin/browser/push/ag;->a(Lorg/b/a/d;Lcom/dolphin/browser/push/as;)V

    .line 323
    return-void
.end method
