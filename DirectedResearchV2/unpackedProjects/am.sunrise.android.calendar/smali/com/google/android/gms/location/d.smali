.class public Lcom/google/android/gms/location/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/cr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/cr;

    const-string v1, "location"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/d;->a:Lcom/google/android/gms/internal/cr;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/d;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->k()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/d;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/d;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->a_()V

    return-void
.end method
