.class Lcom/dolphin/browser/i/e;
.super Ljava/lang/Object;
.source "NameServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/i/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/i/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/i/e;->a:Lcom/dolphin/browser/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/i/e;->a:Lcom/dolphin/browser/i/d;

    invoke-static {v0}, Lcom/dolphin/browser/i/d;->b(Lcom/dolphin/browser/i/d;)Lcom/dolphin/browser/i/a/a;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/i/f;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/i/f;-><init>(Lcom/dolphin/browser/i/e;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/i/a/a;->a(Lcom/dolphin/browser/i/a/c;)V

    .line 74
    return-void
.end method
