.class Lcom/google/android/gms/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ak;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/q;->a:Lcom/google/android/gms/b/p;

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
