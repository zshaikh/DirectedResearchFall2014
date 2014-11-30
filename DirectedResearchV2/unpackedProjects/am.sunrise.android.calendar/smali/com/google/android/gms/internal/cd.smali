.class public final Lcom/google/android/gms/internal/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/i;


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:Lcom/google/android/gms/internal/z;

.field public final d:Lcom/google/android/gms/internal/ab;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/pm/ApplicationInfo;

.field public final g:Landroid/content/pm/PackageInfo;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/google/android/gms/internal/db;

.field public final l:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cd;->CREATOR:Lcom/google/android/gms/internal/i;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/cd;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cd;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iput-object p4, p0, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iput-object p5, p0, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/cd;->f:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/cd;->g:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/cd;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/cd;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    iput-object p12, p0, Lcom/google/android/gms/internal/cd;->l:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/i;->a(Lcom/google/android/gms/internal/cd;Landroid/os/Parcel;I)V

    return-void
.end method
