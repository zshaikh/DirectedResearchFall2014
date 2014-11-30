.class public Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/bm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/bm;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/bm;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->gG:Lcom/google/android/gms/internal/bj;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bm;->aa()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bm;->ab()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bm;->ac()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bm;->ad()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->gL:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/bm;->gM:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->gN:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bm;->ae()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/bm;->orientation:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/bm;->gP:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->go:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->ej:Lcom/google/android/gms/internal/cu;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bl;->e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/bm;
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

    const/16 v16, 0x0

    const/16 v17, 0x0

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

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    :goto_1
    move-object/from16 v20, v4

    move/from16 v4, v17

    move-object/from16 v17, v20

    move/from16 v21, v6

    move-object v6, v15

    move/from16 v15, v21

    move-object/from16 v22, v8

    move-object v8, v13

    move-object/from16 v13, v22

    move/from16 v23, v10

    move-object v10, v11

    move/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v9

    move-object/from16 v9, v24

    move-object/from16 v25, v14

    move v14, v7

    move-object/from16 v7, v25

    move-object/from16 v26, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v26

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto :goto_1

    :pswitch_1
    sget-object v5, Lcom/google/android/gms/internal/bj;->CREATOR:Lcom/google/android/gms/internal/bi;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/bj;

    move-object/from16 v5, v16

    move-object/from16 v16, p0

    move/from16 v20, v15

    move-object v15, v6

    move/from16 v6, v20

    move-object/from16 v21, v13

    move-object v13, v8

    move-object/from16 v8, v21

    move/from16 v22, v11

    move-object v11, v10

    move/from16 v10, v22

    move-object/from16 v23, v9

    move-object v9, v12

    move-object/from16 v12, v23

    move-object/from16 v24, v7

    move v7, v14

    move-object/from16 v14, v24

    move-object/from16 v25, v17

    move/from16 v17, v4

    move-object/from16 v4, v25

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v9

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v11

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v15

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    move/from16 v23, v11

    move-object v11, v10

    move/from16 v10, v23

    move-object/from16 v24, v9

    move-object v9, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_d
    sget-object v17, Lcom/google/android/gms/internal/cu;->CREATOR:Lcom/google/android/gms/internal/cv;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cu;

    move/from16 v17, v4

    move-object/from16 v4, p0

    move/from16 v20, v15

    move-object v15, v6

    move/from16 v6, v20

    move-object/from16 v21, v13

    move-object v13, v8

    move-object/from16 v8, v21

    move/from16 v22, v11

    move-object v11, v10

    move/from16 v10, v22

    move-object/from16 v23, v9

    move-object v9, v12

    move-object/from16 v12, v23

    move-object/from16 v24, v7

    move v7, v14

    move-object/from16 v14, v24

    move-object/from16 v25, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v25

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
    new-instance v3, Lcom/google/android/gms/internal/bm;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/bm;-><init>(ILcom/google/android/gms/internal/bj;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/cu;)V

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public j(I)[Lcom/google/android/gms/internal/bm;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/bm;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bl;->j(I)[Lcom/google/android/gms/internal/bm;

    move-result-object v0

    return-object v0
.end method
