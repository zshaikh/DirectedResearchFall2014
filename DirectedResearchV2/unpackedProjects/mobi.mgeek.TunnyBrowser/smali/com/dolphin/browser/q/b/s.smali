.class Lcom/dolphin/browser/q/b/s;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/au;

.field final synthetic b:Lcom/dolphin/browser/q/b/o;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/o;Lcom/dolphin/browser/q/b/au;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/dolphin/browser/q/b/s;->b:Lcom/dolphin/browser/q/b/o;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/s;->a:Lcom/dolphin/browser/q/b/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/dolphin/browser/q/b/s;->b:Lcom/dolphin/browser/q/b/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/o;->d()V

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/q/b/s;->a:Lcom/dolphin/browser/q/b/au;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/au;->a(Ljava/lang/Object;)V

    .line 649
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/q/b/s;->a:Lcom/dolphin/browser/q/b/au;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/au;->a()V

    .line 643
    return-void
.end method
