.class Lretrofit/Platform$Base$2$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lretrofit/Platform$Base$2;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base$2;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lretrofit/Platform$Base$2$1;->this$1:Lretrofit/Platform$Base$2;

    iput-object p2, p0, Lretrofit/Platform$Base$2$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 88
    iget-object v0, p0, Lretrofit/Platform$Base$2$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    return-void
.end method
