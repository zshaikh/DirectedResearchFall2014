.class public Lcom/google/android/gms/maps/model/MarkerOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/MarkerOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->eG()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 27
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
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

    const/high16 v15, 0x3f000000

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000

    .end local p0    # "this":Lcom/google/android/gms/maps/model/MarkerOptionsCreator;
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

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    :goto_1
    move/from16 v20, v4

    move/from16 v4, v17

    move/from16 v17, v20

    move/from16 v21, v6

    move-object v6, v15

    move/from16 v15, v21

    move/from16 v22, v8

    move-object v8, v13

    move/from16 v13, v22

    move/from16 v23, v10

    move v10, v11

    move/from16 v11, v23

    move/from16 v24, v12

    move v12, v9

    move/from16 v9, v24

    move-object/from16 v25, v14

    move v14, v7

    move-object/from16 v7, v25

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

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto :goto_1

    :pswitch_1
    sget-object v5, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLng;

    move/from16 v5, v16

    move-object/from16 v16, p0

    move/from16 v20, v15

    move-object v15, v6

    move/from16 v6, v20

    move/from16 v21, v13

    move-object v13, v8

    move/from16 v8, v21

    move/from16 v22, v11

    move v11, v10

    move/from16 v10, v22

    move/from16 v23, v9

    move v9, v12

    move/from16 v12, v23

    move-object/from16 v24, v7

    move v7, v14

    move-object/from16 v14, v24

    move/from16 v25, v17

    move/from16 v17, v4

    move/from16 v4, v25

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v8

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v9

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v10

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v11

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v13

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v14

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v15

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v16

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

    move-object/from16 v26, v5

    move/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F

    move-result v17

    move/from16 v20, v17

    move/from16 v17, v4

    move/from16 v4, v20

    move/from16 v21, v15

    move-object v15, v6

    move/from16 v6, v21

    move/from16 v22, v13

    move-object v13, v8

    move/from16 v8, v22

    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v12

    move/from16 v12, v24

    move-object/from16 v25, v7

    move v7, v14

    move-object/from16 v14, v25

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
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V

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

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method
