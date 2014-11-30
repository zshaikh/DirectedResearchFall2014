.class public Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/hb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/hb;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->dU()[Lcom/google/android/gms/internal/hd;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/internal/hb;->kg:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->dV()[F

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[FZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public an(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hb;
    .locals 10

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v8, v2

    move-object v3, v4

    move-object v2, v4

    move-wide v4, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-wide v8, v4

    move-object v4, v2

    move v5, v1

    move-wide v1, v8

    :goto_1
    move-wide v8, v1

    move-object v2, v4

    move v1, v5

    move-wide v4, v8

    goto :goto_0

    :sswitch_0
    sget-object v2, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/he;

    invoke-static {p1, v6, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/hd;

    move-wide v8, v4

    move-object v4, p0

    move v5, v1

    move-wide v1, v8

    goto :goto_1

    :sswitch_1
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    move-wide v8, v4

    move-object v4, v2

    move v5, v1

    move-wide v1, v8

    goto :goto_1

    :sswitch_2
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)[F

    move-result-object v3

    move-wide v8, v4

    move-object v4, v2

    move v5, v1

    move-wide v1, v8

    goto :goto_1

    :sswitch_3
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v4

    move-wide v8, v4

    move-object v4, v2

    move v5, v1

    move-wide v1, v8

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/hb;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(I[Lcom/google/android/gms/internal/hd;[FJ)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bc(I)[Lcom/google/android/gms/internal/hb;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/hb;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hc;->an(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hc;->bc(I)[Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method
