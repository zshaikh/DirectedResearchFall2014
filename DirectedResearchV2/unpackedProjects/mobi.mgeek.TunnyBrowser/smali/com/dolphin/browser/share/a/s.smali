.class Lcom/dolphin/browser/share/a/s;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/bh;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a;

.field final synthetic b:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/dolphin/browser/share/a/s;->b:Lcom/dolphin/browser/share/a/k;

    iput-object p2, p0, Lcom/dolphin/browser/share/a/s;->a:Lcom/dolphin/browser/share/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dolphin/browser/share/a/s;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/dolphin/browser/share/a/s;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Throwable;)V

    .line 469
    return-void
.end method
