.class Lcom/dolphin/browser/q/d/ah;
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
    .line 306
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ah;->b:Lcom/dolphin/browser/q/d/aa;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/ah;->a:Lcom/dolphin/browser/share/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ah;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0}, Lcom/dolphin/browser/share/a;->a()V

    .line 321
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ah;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ah;->a:Lcom/dolphin/browser/share/a;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Throwable;)V

    .line 316
    return-void
.end method
