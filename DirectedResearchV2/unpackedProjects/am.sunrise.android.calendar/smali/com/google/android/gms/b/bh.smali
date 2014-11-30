.class Lcom/google/android/gms/b/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/bf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/bh;->a:Lcom/google/android/gms/b/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/bh;->a:Lcom/google/android/gms/b/bf;

    invoke-static {v0}, Lcom/google/android/gms/b/bf;->e(Lcom/google/android/gms/b/bf;)Lcom/google/android/gms/b/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/v;->b()V

    return-void
.end method
