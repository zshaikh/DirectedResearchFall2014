.class Lcom/dolphin/browser/q/d/af;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/ad;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/ad;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dolphin/browser/q/d/af;->a:Lcom/dolphin/browser/q/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/dolphin/browser/q/d/g;->c()V

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/q/d/af;->a:Lcom/dolphin/browser/q/d/ad;

    iget-object v0, v0, Lcom/dolphin/browser/q/d/ad;->a:Lcom/dolphin/browser/q/d/f;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/q/d/af;->a:Lcom/dolphin/browser/q/d/ad;

    iget-object v0, v0, Lcom/dolphin/browser/q/d/ad;->a:Lcom/dolphin/browser/q/d/f;

    invoke-interface {v0}, Lcom/dolphin/browser/q/d/f;->a()V

    .line 243
    :cond_0
    return-void
.end method
