.class public Lcom/google/android/gms/internal/gu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/gt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/gt;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->dO()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/internal/gt;->kg:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/gt;->yg:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->dP()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->dQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gt;->dR()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aY(I)[Lcom/google/android/gms/internal/gt;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/gt;

    return-object v0
.end method

.method public aj(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gt;
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v0

    move v6, v1

    move-object v5, v2

    move-object v4, v2

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    :goto_1
    move v9, v1

    move v1, v6

    move v6, v9

    move-object v10, v3

    move-object v3, v4

    move-object v4, v10

    move v11, v5

    move-object v5, v2

    move v2, v11

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    goto :goto_1

    :sswitch_1
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    goto :goto_1

    :sswitch_2
    sget-object v3, Lcom/google/android/gms/internal/gx;->CREATOR:Lcom/google/android/gms/internal/gy;

    invoke-static {p1, v7, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    goto :goto_1

    :sswitch_3
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    goto :goto_1

    :sswitch_4
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    goto :goto_1

    :sswitch_5
    invoke-static {p1, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v6

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    move v11, v2

    move-object v2, v5

    move v5, v11

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-eq v7, v0, :cond_1

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
    new-instance v0, Lcom/google/android/gms/internal/gt;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gt;-><init>(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gu;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/internal/gt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gu;->aY(I)[Lcom/google/android/gms/internal/gt;

    move-result-object v0

    return-object v0
.end method