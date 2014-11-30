.class Lcom/google/android/gms/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ak;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/g;

.field final synthetic b:Lcom/google/android/gms/b/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/i;Lcom/google/android/gms/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/j;->b:Lcom/google/android/gms/b/i;

    iput-object p2, p0, Lcom/google/android/gms/b/j;->a:Lcom/google/android/gms/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
