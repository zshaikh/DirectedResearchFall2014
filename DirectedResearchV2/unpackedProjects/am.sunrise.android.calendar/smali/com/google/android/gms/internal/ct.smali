.class final Lcom/google/android/gms/internal/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/cv",
        "<",
        "Lcom/google/android/gms/internal/cm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->a:Lcom/google/android/gms/internal/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/cs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/cr;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->a:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/cm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->a:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->b(Lcom/google/android/gms/internal/cr;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cm;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ct;->b()Lcom/google/android/gms/internal/cm;

    move-result-object v0

    return-object v0
.end method
