.class final Lcom/google/android/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/a/g;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/i;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/a/a/l;

    invoke-direct {v1, p0}, Lcom/google/android/a/a/l;-><init>(Lcom/google/android/a/a/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->b(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/a/a/o;->a(J)V

    return-void
.end method
