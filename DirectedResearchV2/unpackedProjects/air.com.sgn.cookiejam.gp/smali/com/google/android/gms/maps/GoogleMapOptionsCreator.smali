.class public Lcom/google/android/gms/maps/GoogleMapOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/GoogleMapOptions;",
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

.method static a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->eo()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ep()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->eq()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->er()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->es()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->et()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->eu()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ev()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 22
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

    .end local p0    # "this":Lcom/google/android/gms/maps/GoogleMapOptionsCreator;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    :goto_1
    move/from16 v17, v4

    move v4, v14

    move/from16 v14, v17

    move/from16 v18, v6

    move v6, v12

    move/from16 v12, v18

    move/from16 v19, v8

    move-object v8, v10

    move/from16 v10, v19

    move/from16 v20, v11

    move v11, v7

    move/from16 v7, v20

    move/from16 v21, v13

    move v13, v5

    move/from16 v5, v21

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v5

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v6

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v7

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :pswitch_4
    sget-object v8, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/CameraPositionCreator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/CameraPosition;

    move v8, v10

    move-object/from16 v10, p0

    move/from16 v17, v12

    move v12, v6

    move/from16 v6, v17

    move/from16 v18, v14

    move v14, v4

    move/from16 v4, v18

    move/from16 v19, v7

    move v7, v11

    move/from16 v11, v19

    move/from16 v20, v5

    move v5, v13

    move/from16 v13, v20

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v9

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v10

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v11

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v12

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v13

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->e(Landroid/os/Parcel;I)B

    move-result v14

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v18, v12

    move v12, v6

    move/from16 v6, v18

    move/from16 v19, v10

    move-object v10, v8

    move/from16 v8, v19

    move/from16 v20, v7

    move v7, v11

    move/from16 v11, v20

    move/from16 v21, v5

    move v5, v13

    move/from16 v13, v21

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-eq v15, v3, :cond_1

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
    new-instance v3, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V

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
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/maps/GoogleMapOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    return-object v0
.end method
