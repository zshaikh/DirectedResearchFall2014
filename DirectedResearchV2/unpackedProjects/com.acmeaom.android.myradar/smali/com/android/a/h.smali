.class Lcom/android/a/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/android/a/g;


# direct methods
.method constructor <init>(Lcom/android/a/g;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/a/h;->b:Lcom/android/a/g;

    iput-object p2, p0, Lcom/android/a/h;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/a/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
