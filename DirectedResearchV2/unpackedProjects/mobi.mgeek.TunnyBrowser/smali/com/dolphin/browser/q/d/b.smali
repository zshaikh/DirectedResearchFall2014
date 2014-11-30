.class Lcom/dolphin/browser/q/d/b;
.super Ljava/lang/Thread;
.source "AsyncTwitterRunner.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/c;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/dolphin/browser/q/d/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/a;Lcom/dolphin/browser/q/d/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/q/d/b;->c:Lcom/dolphin/browser/q/d/a;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/b;->a:Lcom/dolphin/browser/q/d/c;

    iput-object p3, p0, Lcom/dolphin/browser/q/d/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/b;->a:Lcom/dolphin/browser/q/d/c;

    invoke-interface {v0}, Lcom/dolphin/browser/q/d/c;->a()V

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/q/d/b;->c:Lcom/dolphin/browser/q/d/a;

    iget-object v0, v0, Lcom/dolphin/browser/q/d/a;->a:Lcom/dolphin/browser/q/d/k;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/b;->a:Lcom/dolphin/browser/q/d/c;

    new-instance v1, Lcom/dolphin/browser/q/d/y;

    const-string v2, "auth.expireSession failed"

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/d/y;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/d/c;->a(Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/q/d/b;->a:Lcom/dolphin/browser/q/d/c;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/q/d/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/dolphin/browser/q/d/b;->a:Lcom/dolphin/browser/q/d/c;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/q/d/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
