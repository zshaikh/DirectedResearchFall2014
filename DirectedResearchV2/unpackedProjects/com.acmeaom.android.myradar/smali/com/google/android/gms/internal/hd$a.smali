.class public final Lcom/google/android/gms/internal/hd$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bk;


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/bk;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hd$a;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hd$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/hd$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/hd$a;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hd$a;->e:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/bk;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/hd$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/hd$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hd$a;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/hd$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "placeId"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "tag"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "callingAppPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "callingAppVersionCode"

    iget v2, p0, Lcom/google/android/gms/internal/hd$a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hd$a;->CREATOR:Lcom/google/android/gms/internal/bk;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/android/gms/internal/hd$a;Landroid/os/Parcel;I)V

    return-void
.end method
