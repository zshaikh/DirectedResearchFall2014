.class public Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/drive/metadata/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/b",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/drive/metadata/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x419ce0

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "contentAvailability"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/cc;->a:Lcom/google/android/gms/drive/metadata/b;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "isPinnable"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/drive/metadata/b;

    return-void
.end method
