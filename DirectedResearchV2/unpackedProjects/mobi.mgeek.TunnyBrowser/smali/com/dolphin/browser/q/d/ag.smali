.class Lcom/dolphin/browser/q/d/ag;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/dolphin/browser/share/g;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a;

.field final synthetic b:Lcom/dolphin/browser/q/d/aa;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ag;->b:Lcom/dolphin/browser/q/d/aa;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/ag;->a:Lcom/dolphin/browser/share/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ag;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0}, Lcom/dolphin/browser/share/a;->a()V

    .line 267
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ag;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ag;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Throwable;)V

    .line 262
    return-void
.end method
