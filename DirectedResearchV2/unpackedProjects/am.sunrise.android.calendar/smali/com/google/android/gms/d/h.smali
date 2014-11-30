.class Lcom/google/android/gms/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/d/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/d/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/h;->a:Lcom/google/android/gms/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/google/android/gms/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/h;->a:Lcom/google/android/gms/d/b;

    invoke-static {v0}, Lcom/google/android/gms/d/b;->b(Lcom/google/android/gms/d/b;)Lcom/google/android/gms/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/a;->a()V

    return-void
.end method
