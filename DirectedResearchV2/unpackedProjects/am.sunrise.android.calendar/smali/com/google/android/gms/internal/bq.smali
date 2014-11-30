.class public final Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/f;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/bn;

.field public final c:Lcom/google/android/gms/internal/fc;

.field public final d:Lcom/google/android/gms/internal/g;

.field public final e:Lcom/google/android/gms/internal/m;

.field public final f:Lcom/google/android/gms/internal/d;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/h;

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/db;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bq;->CREATOR:Lcom/google/android/gms/internal/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/bn;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    invoke-static {p3}, Lcom/google/android/gms/d/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fc;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/fc;

    invoke-static {p4}, Lcom/google/android/gms/d/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/g;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/g;

    invoke-static {p5}, Lcom/google/android/gms/d/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/m;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/m;

    invoke-static {p6}, Lcom/google/android/gms/d/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/d;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/d/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/h;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/h;

    iput p11, p0, Lcom/google/android/gms/internal/bq;->k:I

    iput p12, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object p13, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/fc;

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/m;

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/d/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/d/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/f;->a(Lcom/google/android/gms/internal/bq;Landroid/os/Parcel;I)V

    return-void
.end method
