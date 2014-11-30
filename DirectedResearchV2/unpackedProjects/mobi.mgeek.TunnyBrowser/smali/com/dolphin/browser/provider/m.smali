.class Lcom/dolphin/browser/provider/m;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/dolphin/browser/provider/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/provider/l;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/dolphin/browser/provider/m;->b:Lcom/dolphin/browser/provider/l;

    iput-object p2, p0, Lcom/dolphin/browser/provider/m;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2029
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/provider/m;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    iget-object v0, p0, Lcom/dolphin/browser/provider/m;->b:Lcom/dolphin/browser/provider/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/l;->a()V

    .line 2033
    return-void

    .line 2031
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dolphin/browser/provider/m;->b:Lcom/dolphin/browser/provider/l;

    invoke-virtual {v1}, Lcom/dolphin/browser/provider/l;->a()V

    throw v0
.end method
