.class public Lcom/google/android/gms/internal/ay;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/drive/metadata/c;

.field public static final b:Lcom/google/android/gms/drive/metadata/c;

.field public static final c:Lcom/google/android/gms/drive/metadata/c;

.field public static final d:Lcom/google/android/gms/drive/metadata/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "modified"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ay;->a:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ay;->b:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "created"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ay;->c:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ay;->d:Lcom/google/android/gms/drive/metadata/c;

    return-void
.end method