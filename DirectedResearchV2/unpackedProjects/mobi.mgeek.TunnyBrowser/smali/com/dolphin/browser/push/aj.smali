.class Lcom/dolphin/browser/push/aj;
.super Ljava/lang/Object;
.source "PushProcessor.java"

# interfaces
.implements Lcom/dolphin/browser/push/http/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/dolphin/browser/push/aj;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "PushProcessor"

    const-string v1, "Network disconnected, stopping..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/dolphin/browser/push/aj;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->e()V

    .line 667
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 671
    const-string v0, "PushProcessor"

    const-string v1, "network connected, starting..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/dolphin/browser/push/aj;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->b()V

    .line 673
    return-void
.end method
