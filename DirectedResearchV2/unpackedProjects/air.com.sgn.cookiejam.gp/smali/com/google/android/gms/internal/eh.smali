.class public final Lcom/google/android/gms/internal/eh;
.super Lcom/google/android/gms/dynamic/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/e",
        "<",
        "Lcom/google/android/gms/internal/ed;",
        ">;"
    }
.end annotation


# static fields
.field private static final pP:Lcom/google/android/gms/internal/eh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/eh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/eh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eh;->pP:Lcom/google/android/gms/internal/eh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;II)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/e$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/eh;->pP:Lcom/google/android/gms/internal/eh;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/eh;->e(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;II)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/e$a;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eh;->t(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ed;

    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ed;->a(Lcom/google/android/gms/dynamic/b;II)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/e$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get button with size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/e$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ed;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ed$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eh;->A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ed;

    move-result-object v0

    return-object v0
.end method