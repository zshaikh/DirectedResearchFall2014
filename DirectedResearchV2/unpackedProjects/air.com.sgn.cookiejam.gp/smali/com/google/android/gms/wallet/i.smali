.class public Lcom/google/android/gms/wallet/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Go:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GK:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GL:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GM:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GN:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Gk:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GO:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Gu:Lcom/google/android/gms/wallet/Cart;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GP:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GQ:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GR:[Lcom/google/android/gms/wallet/CountrySpecification;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GS:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->GT:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aM(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 27

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

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v18

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    :goto_1
    move/from16 v20, v4

    move/from16 v4, v17

    move/from16 v17, v20

    move-object/from16 v21, v6

    move v6, v15

    move-object/from16 v15, v21

    move/from16 v22, v8

    move v8, v13

    move/from16 v13, v22

    move-object/from16 v23, v10

    move-object v10, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v9

    move-object/from16 v9, v24

    move/from16 v25, v14

    move v14, v7

    move/from16 v7, v25

    move-object/from16 v26, v16

    move/from16 v16, v5

    move-object/from16 v5, v26

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v6

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v7

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v8

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_8
    sget-object v12, Lcom/google/android/gms/wallet/Cart;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/Cart;

    move-object v12, v9

    move-object/from16 v9, p0

    move-object/from16 v20, v15

    move v15, v6

    move-object/from16 v6, v20

    move/from16 v21, v13

    move v13, v8

    move/from16 v8, v21

    move-object/from16 v22, v11

    move-object v11, v10

    move-object/from16 v10, v22

    move/from16 v23, v17

    move/from16 v17, v4

    move/from16 v4, v23

    move/from16 v24, v7

    move v7, v14

    move/from16 v14, v24

    move-object/from16 v25, v5

    move/from16 v5, v16

    move-object/from16 v16, v25

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v13

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_b
    sget-object v15, Lcom/google/android/gms/wallet/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/wallet/CountrySpecification;

    move v15, v6

    move-object/from16 v6, p0

    move/from16 v20, v16

    move-object/from16 v16, v5

    move/from16 v5, v20

    move/from16 v21, v13

    move v13, v8

    move/from16 v8, v21

    move-object/from16 v22, v11

    move-object v11, v10

    move-object/from16 v10, v22

    move-object/from16 v23, v9

    move-object v9, v12

    move-object/from16 v12, v23

    move/from16 v24, v7

    move v7, v14

    move/from16 v14, v24

    move/from16 v25, v17

    move/from16 v17, v4

    move/from16 v4, v25

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v16

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v17

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move-object/from16 v21, v15

    move v15, v6

    move-object/from16 v6, v21

    move/from16 v22, v13

    move v13, v8

    move/from16 v8, v22

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v25, v7

    move v7, v14

    move/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v18

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_1

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
    new-instance v3, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZ)V

    return-object v3

    nop

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public bE(I)[Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/i;->aM(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/i;->bE(I)[Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    return-object v0
.end method
