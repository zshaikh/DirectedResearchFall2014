.class public final Lcom/google/android/gms/plus/d;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a;

.field public static final c:Lcom/google/android/gms/common/api/k;

.field public static final d:Lcom/google/android/gms/common/api/k;

.field public static final e:Lcom/google/android/gms/plus/b;

.field public static final f:Lcom/google/android/gms/plus/c;

.field public static final g:Lcom/google/android/gms/plus/a;

.field public static final h:Lcom/google/android/gms/plus/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/plus/e;

    invoke-direct {v0}, Lcom/google/android/gms/plus/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/c;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->b:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/k;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/k;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->d:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/internal/dp;

    sget-object v1, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dp;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->e:Lcom/google/android/gms/plus/b;

    new-instance v0, Lcom/google/android/gms/internal/dq;

    sget-object v1, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dq;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->f:Lcom/google/android/gms/plus/c;

    new-instance v0, Lcom/google/android/gms/internal/dn;

    sget-object v1, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dn;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->g:Lcom/google/android/gms/plus/a;

    new-instance v0, Lcom/google/android/gms/internal/do;

    sget-object v1, Lcom/google/android/gms/plus/d;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/do;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/g;

    return-void
.end method
