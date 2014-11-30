.class Lcom/google/android/gms/maps/k;
.super Lcom/google/android/gms/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/b",
        "<",
        "Lcom/google/android/gms/maps/j;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/d/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/n",
            "<",
            "Lcom/google/android/gms/maps/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/k;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/k;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/k;->g()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/k;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/k;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/d/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/n",
            "<",
            "Lcom/google/android/gms/maps/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/d/n;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/k;->g()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/k;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/d/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/k;->a()Lcom/google/android/gms/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/k;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/i;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/k;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/bn;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/k;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/d/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/z;->b(Lcom/google/android/gms/d/j;)Lcom/google/android/gms/maps/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/d/n;

    new-instance v2, Lcom/google/android/gms/maps/j;

    iget-object v3, p0, Lcom/google/android/gms/maps/k;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/a/j;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/d/n;->a(Lcom/google/android/gms/d/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
