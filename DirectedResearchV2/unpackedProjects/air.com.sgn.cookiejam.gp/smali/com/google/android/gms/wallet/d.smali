.class public Lcom/google/android/gms/wallet/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/FullWallet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWallet;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Gn:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Go:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Gp:Lcom/google/android/gms/wallet/ProxyCard;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Gq:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Gr:Lcom/google/android/gms/wallet/Address;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Gs:Lcom/google/android/gms/wallet/Address;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->Gt:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aH(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/FullWallet;
    .locals 18

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ge v12, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object v14, v11

    move v11, v4

    move-object v4, v14

    move-object v15, v9

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    :goto_1
    move-object v14, v4

    move v4, v11

    move-object v11, v14

    move-object v15, v6

    move-object v6, v9

    move-object v9, v15

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    move-object/from16 v17, v10

    move-object v10, v5

    move-object/from16 v5, v17

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object v14, v11

    move v11, v4

    move-object v4, v14

    move-object v15, v9

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-object v14, v11

    move v11, v4

    move-object v4, v14

    move-object v15, v9

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v11

    move v11, v4

    move-object v4, v14

    move-object v15, v9

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    goto :goto_1

    :pswitch_3
    sget-object v7, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/ProxyCard;

    move-object v7, v8

    move-object/from16 v8, p0

    move-object v14, v9

    move-object v9, v6

    move-object v6, v14

    move-object v15, v10

    move-object v10, v5

    move-object v5, v15

    move-object/from16 v16, v11

    move v11, v4

    move-object/from16 v4, v16

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v11

    move v11, v4

    move-object v4, v14

    move-object v15, v9

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    goto/16 :goto_1

    :pswitch_5
    sget-object v9, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/Address;

    move-object v9, v6

    move-object/from16 v6, p0

    move-object v14, v10

    move-object v10, v5

    move-object v5, v14

    move-object v15, v7

    move-object v7, v8

    move-object v8, v15

    move-object/from16 v16, v11

    move v11, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    :pswitch_6
    sget-object v10, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/Address;

    move-object v10, v5

    move-object/from16 v5, p0

    move-object v14, v9

    move-object v9, v6

    move-object v6, v14

    move-object v15, v7

    move-object v7, v8

    move-object v8, v15

    move-object/from16 v16, v11

    move v11, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    move v11, v4

    move-object v4, v14

    move-object v15, v9

    move-object v9, v6

    move-object v6, v15

    move-object/from16 v16, v7

    move-object v7, v8

    move-object/from16 v8, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-eq v12, v3, :cond_1

    new-instance v4, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overread allowed size end="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v4

    :cond_1
    new-instance v3, Lcom/google/android/gms/wallet/FullWallet;

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/wallet/FullWallet;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public bz(I)[Lcom/google/android/gms/wallet/FullWallet;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/wallet/FullWallet;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/d;->aH(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/FullWallet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/d;->bz(I)[Lcom/google/android/gms/wallet/FullWallet;

    move-result-object v0

    return-object v0
.end method
