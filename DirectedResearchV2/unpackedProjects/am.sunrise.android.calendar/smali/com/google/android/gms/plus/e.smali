.class final Lcom/google/android/gms/plus/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/c",
        "<",
        "Lcom/google/android/gms/plus/internal/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/plus/e;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/plus/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/plus/internal/g;
    .locals 10

    new-instance v0, Lcom/google/android/gms/plus/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/f;-><init>(Lcom/google/android/gms/plus/e;)V

    if-eqz p4, :cond_0

    instance-of v0, p4, Lcom/google/android/gms/plus/f;

    const-string v1, "Must provide valid PlusOptions!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bf;->b(ZLjava/lang/Object;)V

    check-cast p4, Lcom/google/android/gms/plus/f;

    :goto_0
    new-instance v9, Lcom/google/android/gms/plus/internal/g;

    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->b()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/google/android/gms/plus/f;->b:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct {v8}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/plus/internal/h;)V

    return-object v9

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method
