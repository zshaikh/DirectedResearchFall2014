.class public final Lcom/google/android/gms/internal/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bf;


# instance fields
.field final a:I

.field final b:Ljava/util/List;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gt;->CREATOR:Lcom/google/android/gms/internal/bf;

    return-void
.end method

.method constructor <init>(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gt;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/gt;->c:I

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->b:Ljava/util/List;

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    if-nez p5, :cond_1

    const-string p5, ""

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/internal/gt;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/gt;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->g:Ljava/util/Set;

    :goto_1
    return-void

    :cond_2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/gt;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gt;->g:Ljava/util/Set;

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gt;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gt;->f:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gt;->CREATOR:Lcom/google/android/gms/internal/bf;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/gt;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/gt;

    iget v2, p0, Lcom/google/android/gms/internal/gt;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/gt;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->g:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/internal/gt;->g:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/gt;->e:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gt;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gt;->f:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/gt;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->g:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gt;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    const-string v1, "maxResults"

    iget v2, p0, Lcom/google/android/gms/internal/gt;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->g:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "nameQuery"

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "textQuery"

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    const-string v1, "isOpenNowRequired"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gt;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gt;->CREATOR:Lcom/google/android/gms/internal/bf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bf;->a(Lcom/google/android/gms/internal/gt;Landroid/os/Parcel;I)V

    return-void
.end method
