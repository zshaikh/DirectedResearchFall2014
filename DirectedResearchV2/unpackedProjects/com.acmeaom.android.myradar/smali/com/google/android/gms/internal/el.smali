.class public final Lcom/google/android/gms/internal/el;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/af;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/af;

    invoke-direct {v0}, Lcom/google/android/gms/internal/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/el;->CREATOR:Lcom/google/android/gms/internal/af;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/el;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/el;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/el;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/el;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/el;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/el;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/el;->g:Ljava/lang/String;

    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/internal/el;->h:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/el;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/el;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/el;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/el;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/el;

    iget v1, p0, Lcom/google/android/gms/internal/el;->a:I

    iget v2, p1, Lcom/google/android/gms/internal/el;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/el;->b:I

    iget v2, p1, Lcom/google/android/gms/internal/el;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/el;->c:I

    iget v2, p1, Lcom/google/android/gms/internal/el;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/el;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/el;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/el;->b:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/el;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/el;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/el;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/el;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/z;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/el;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Person [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Circle [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Group [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/el;Landroid/os/Parcel;I)V

    return-void
.end method
