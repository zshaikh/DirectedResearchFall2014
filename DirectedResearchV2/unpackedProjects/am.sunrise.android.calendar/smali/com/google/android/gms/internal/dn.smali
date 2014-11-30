.class public final Lcom/google/android/gms/internal/dn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/a;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dn;->a:Lcom/google/android/gms/common/api/c;

    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e;",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/g;",
            ">;)",
            "Lcom/google/android/gms/plus/internal/g;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bf;->b(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/e;->c()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bf;->a(ZLjava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/g;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/bf;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/g;->l()V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/g;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
