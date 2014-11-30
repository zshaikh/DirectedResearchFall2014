.class public Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/google/android/gms/internal/bq;->a:I

    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/gms/internal/bq;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/bn;

    iget v0, p0, Lcom/google/android/gms/internal/bq;->d:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/bn;->a(I)Lcom/google/android/gms/internal/bn;

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bn;->a()Lcom/google/android/gms/internal/hd$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
