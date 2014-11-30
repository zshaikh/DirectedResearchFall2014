.class Lcom/google/android/gms/maps/e;
.super Lcom/google/android/gms/maps/a/ay;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/g;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/e;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/g;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/a/m;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/g;

    new-instance v1, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g;->a(Lcom/google/android/gms/maps/model/i;)Z

    move-result v0

    return v0
.end method
