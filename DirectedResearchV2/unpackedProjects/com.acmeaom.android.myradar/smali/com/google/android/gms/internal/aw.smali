.class public Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/drive/metadata/b;

.field public static final b:Lcom/google/android/gms/drive/metadata/b;

.field public static final c:Lcom/google/android/gms/drive/metadata/b;

.field public static final d:Lcom/google/android/gms/drive/metadata/b;

.field public static final e:Lcom/google/android/gms/drive/metadata/b;

.field public static final f:Lcom/google/android/gms/drive/metadata/b;

.field public static final g:Lcom/google/android/gms/drive/metadata/b;

.field public static final h:Lcom/google/android/gms/drive/metadata/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/az;->a:Lcom/google/android/gms/internal/az;

    sput-object v0, Lcom/google/android/gms/internal/aw;->a:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/d;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->b:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/d;

    const-string v1, "mimeType"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->c:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "starred"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->d:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/internal/ax;

    const-string v1, "trashed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ax;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->e:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "isEditable"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->f:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "isPinned"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->g:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/e;

    const-string v1, "parents"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/aw;->h:Lcom/google/android/gms/drive/metadata/a;

    return-void
.end method
