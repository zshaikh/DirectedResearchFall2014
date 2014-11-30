.class Lcom/dolphin/browser/q/c/e;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/c/c;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/dolphin/browser/q/c/e;->a:Lcom/dolphin/browser/q/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLogoutFinish()V

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/q/c/e;->a:Lcom/dolphin/browser/q/c/c;

    iget-object v0, v0, Lcom/dolphin/browser/q/c/c;->a:Lcom/dolphin/browser/q/c/p;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/q/c/e;->a:Lcom/dolphin/browser/q/c/c;

    iget-object v0, v0, Lcom/dolphin/browser/q/c/c;->a:Lcom/dolphin/browser/q/c/p;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/p;->a()V

    .line 375
    :cond_0
    return-void
.end method
