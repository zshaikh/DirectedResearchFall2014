.class public Lcom/google/android/gms/internal/he;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/hd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/hd;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->ee()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->ef()Lcom/google/android/gms/internal/hf;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->dX()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->dY()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->dZ()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->eg()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->ea()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->eb()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getRating()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->ec()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->ed()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->dW()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/internal/hd;->kg:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public ao(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hd;
    .locals 28

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

    const-wide/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v19

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    :goto_1
    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move/from16 v4, v18

    move-wide/from16 v17, v21

    move/from16 v23, v8

    move-object v8, v14

    move/from16 v14, v23

    move-object/from16 v24, v10

    move v10, v12

    move-object/from16 v12, v24

    move-object/from16 v25, v13

    move-object v13, v9

    move-object/from16 v9, v25

    move-object/from16 v26, v15

    move v15, v7

    move-object/from16 v7, v26

    move-object/from16 v27, v16

    move/from16 v16, v6

    move-object/from16 v6, v27

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v7

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto :goto_1

    :sswitch_2
    sget-object v8, Lcom/google/android/gms/internal/hf;->CREATOR:Lcom/google/android/gms/internal/hg;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/hf;

    move v8, v14

    move-object/from16 v14, p0

    move/from16 v21, v15

    move-object v15, v7

    move/from16 v7, v21

    move-object/from16 v22, v13

    move-object v13, v9

    move-object/from16 v9, v22

    move/from16 v23, v10

    move-object v10, v12

    move/from16 v12, v23

    move/from16 v24, v16

    move-object/from16 v16, v6

    move/from16 v6, v24

    move-wide/from16 v25, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v25

    goto/16 :goto_1

    :sswitch_3
    sget-object v9, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLng;

    move-object v9, v13

    move-object/from16 v13, p0

    move/from16 v21, v15

    move-object v15, v7

    move/from16 v7, v21

    move-wide/from16 v22, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v22

    move/from16 v24, v16

    move-object/from16 v16, v6

    move/from16 v6, v24

    move/from16 v25, v14

    move-object v14, v8

    move/from16 v8, v25

    move/from16 v26, v10

    move-object v10, v12

    move/from16 v12, v26

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v10

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_5
    sget-object v11, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v11, p0

    move/from16 v21, v16

    move-object/from16 v16, v6

    move/from16 v6, v21

    move/from16 v22, v14

    move-object v14, v8

    move/from16 v8, v22

    move-object/from16 v23, v12

    move v12, v10

    move-object/from16 v10, v23

    move-wide/from16 v24, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v24

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v13

    move-object v13, v9

    move-object/from16 v9, v27

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_7
    sget-object v13, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move-object v13, v9

    move-object/from16 v9, p0

    move/from16 v21, v15

    move-object v15, v7

    move/from16 v7, v21

    move/from16 v22, v16

    move-object/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v10

    move-object v10, v12

    move/from16 v12, v23

    move-object/from16 v24, v8

    move v8, v14

    move-object/from16 v14, v24

    move-wide/from16 v25, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v25

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v15

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v16

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v17

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_c
    sget-object v6, Lcom/google/android/gms/internal/gx;->CREATOR:Lcom/google/android/gms/internal/gy;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-wide/from16 v21, v17

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-wide/from16 v4, v21

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v23

    move-object/from16 v24, v12

    move v12, v10

    move-object/from16 v10, v24

    move-object/from16 v25, v9

    move-object v9, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v7

    move v7, v15

    move-object/from16 v15, v26

    move-object/from16 v27, v6

    move/from16 v6, v16

    move-object/from16 v16, v27

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v19

    move/from16 v0, v19

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
    new-instance v3, Lcom/google/android/gms/internal/hd;

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/hd;-><init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/internal/hf;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJ)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0x3e8 -> :sswitch_d
    .end sparse-switch
.end method

.method public be(I)[Lcom/google/android/gms/internal/hd;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/hd;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/he;->ao(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/he;->be(I)[Lcom/google/android/gms/internal/hd;

    move-result-object v0

    return-object v0
.end method
