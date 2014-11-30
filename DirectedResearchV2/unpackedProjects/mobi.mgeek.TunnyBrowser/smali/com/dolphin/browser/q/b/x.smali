.class Lcom/dolphin/browser/q/b/x;
.super Ljava/lang/Object;
.source "EvernoteApiCaller.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/av;

.field final synthetic b:Lcom/dolphin/browser/q/b/t;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/t;Lcom/dolphin/browser/q/b/av;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/dolphin/browser/q/b/x;->b:Lcom/dolphin/browser/q/b/t;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/x;->a:Lcom/dolphin/browser/q/b/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/dolphin/browser/q/b/x;->b:Lcom/dolphin/browser/q/b/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/t;->c()V

    .line 760
    iget-object v0, p0, Lcom/dolphin/browser/q/b/x;->a:Lcom/dolphin/browser/q/b/av;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/av;->a(Ljava/lang/Object;)V

    .line 761
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/dolphin/browser/q/b/x;->a:Lcom/dolphin/browser/q/b/av;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/av;->a()V

    .line 755
    return-void
.end method
