.class Lcom/google/android/a/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/a/aa;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/u;


# direct methods
.method private constructor <init>(Lcom/google/android/a/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/a/a/u;Lcom/google/android/a/a/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/a/a/w;-><init>(Lcom/google/android/a/a/u;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    invoke-static {v0}, Lcom/google/android/a/a/u;->i(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/v;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    invoke-static {v0}, Lcom/google/android/a/a/u;->i(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/a/a/v;->a()Lcom/google/android/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    invoke-static {v1}, Lcom/google/android/a/a/u;->e(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/g;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/a/a/m;->b:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/a/a/g;->a(J)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    invoke-static {v0, p1}, Lcom/google/android/a/a/u;->b(Lcom/google/android/a/a/u;I)I

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/google/android/a/a/u;->a(Lcom/google/android/a/a/u;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/w;->a:Lcom/google/android/a/a/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/a/a/u;->a(Lcom/google/android/a/a/u;I)I

    goto :goto_0
.end method
