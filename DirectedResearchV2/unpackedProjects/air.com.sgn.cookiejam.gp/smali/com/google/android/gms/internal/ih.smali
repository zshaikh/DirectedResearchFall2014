.class public Lcom/google/android/gms/internal/ih;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ig;Landroid/os/Parcel;I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fa()Ljava/util/Set;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getVersionCode()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getAboutMe()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fv()Lcom/google/android/gms/internal/ig$a;

    move-result-object v2

    invoke-static {p1, v5, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getBraggingRights()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_4
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getCircledByCount()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_5
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fw()Lcom/google/android/gms/internal/ig$b;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_6
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getCurrentLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_7
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_8
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getGender()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_9
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_a
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fx()Lcom/google/android/gms/internal/ig$c;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_b
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->isPlusUser()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    :cond_c
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fy()Lcom/google/android/gms/internal/ig$d;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    :cond_d
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_e
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getObjectType()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_f
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_10
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fA()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_11
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fz()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_12
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getRelationshipStatus()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_13
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getPlusOneCount()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_14
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_15
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->getTagline()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_16
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->isVerified()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    :cond_17
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ig;->fB()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    :cond_18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public au(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ig;
    .locals 44

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v30

    move/from16 v0, v30

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v31

    packed-switch v31, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    :goto_1
    move/from16 v32, v5

    move/from16 v5, v29

    move/from16 v29, v32

    move-object/from16 v33, v7

    move-object/from16 v7, v27

    move-object/from16 v27, v33

    move/from16 v34, v9

    move-object/from16 v9, v25

    move/from16 v25, v34

    move-object/from16 v35, v11

    move-object/from16 v11, v23

    move-object/from16 v23, v35

    move/from16 v36, v13

    move-object/from16 v13, v21

    move/from16 v21, v36

    move-object/from16 v37, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v37

    move-object/from16 v38, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v38

    move/from16 v39, v20

    move-object/from16 v20, v14

    move/from16 v14, v39

    move-object/from16 v40, v22

    move-object/from16 v22, v12

    move-object/from16 v12, v40

    move/from16 v41, v24

    move/from16 v24, v10

    move/from16 v10, v41

    move-object/from16 v42, v26

    move-object/from16 v26, v8

    move-object/from16 v8, v42

    move-object/from16 v43, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v43

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_3
    sget-object v7, Lcom/google/android/gms/internal/ig$a;->CREATOR:Lcom/google/android/gms/internal/ii;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ig$a;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v27

    move-object/from16 v27, p0

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move/from16 v33, v25

    move-object/from16 v25, v9

    move/from16 v9, v33

    move-object/from16 v34, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v34

    move/from16 v35, v21

    move-object/from16 v21, v13

    move/from16 v13, v35

    move-object/from16 v36, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v36

    move-object/from16 v37, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v37

    move/from16 v38, v14

    move-object/from16 v14, v20

    move/from16 v20, v38

    move-object/from16 v39, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v39

    move/from16 v40, v10

    move/from16 v10, v24

    move/from16 v24, v40

    move-object/from16 v41, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v41

    move-object/from16 v42, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v42

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    const/16 v30, 0x4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    const/16 v30, 0x5

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v10

    const/16 v30, 0x6

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_7
    sget-object v11, Lcom/google/android/gms/internal/ig$b;->CREATOR:Lcom/google/android/gms/internal/ij;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ig$b;

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v23

    move-object/from16 v23, p0

    move-object/from16 v32, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v32

    move/from16 v33, v25

    move-object/from16 v25, v9

    move/from16 v9, v33

    move/from16 v34, v29

    move/from16 v29, v5

    move/from16 v5, v34

    move/from16 v35, v21

    move-object/from16 v21, v13

    move/from16 v13, v35

    move-object/from16 v36, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v36

    move-object/from16 v37, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v37

    move/from16 v38, v14

    move-object/from16 v14, v20

    move/from16 v20, v38

    move-object/from16 v39, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v39

    move/from16 v40, v10

    move/from16 v10, v24

    move/from16 v24, v40

    move-object/from16 v41, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v41

    move-object/from16 v42, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v42

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    const/16 v30, 0x8

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    const/16 v30, 0x9

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    const/16 v30, 0xc

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    const/16 v30, 0xe

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_c
    sget-object v16, Lcom/google/android/gms/internal/ig$c;->CREATOR:Lcom/google/android/gms/internal/im;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ig$c;

    const/16 v16, 0xf

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v18

    move-object/from16 v18, p0

    move-object/from16 v32, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v32

    move/from16 v33, v25

    move-object/from16 v25, v9

    move/from16 v9, v33

    move-object/from16 v34, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v34

    move/from16 v35, v21

    move-object/from16 v21, v13

    move/from16 v13, v35

    move-object/from16 v36, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v36

    move-object/from16 v37, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v37

    move/from16 v38, v14

    move-object/from16 v14, v20

    move/from16 v20, v38

    move-object/from16 v39, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v39

    move/from16 v40, v10

    move/from16 v10, v24

    move/from16 v24, v40

    move-object/from16 v41, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v41

    move/from16 v42, v29

    move/from16 v29, v5

    move/from16 v5, v42

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v17

    const/16 v30, 0x10

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_e
    sget-object v19, Lcom/google/android/gms/internal/ig$d;->CREATOR:Lcom/google/android/gms/internal/in;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ig$d;

    const/16 v19, 0x13

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v15

    move-object/from16 v15, p0

    move-object/from16 v32, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v32

    move/from16 v33, v25

    move-object/from16 v25, v9

    move/from16 v9, v33

    move-object/from16 v34, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v34

    move/from16 v35, v21

    move-object/from16 v21, v13

    move/from16 v13, v35

    move-object/from16 v36, v28

    move-object/from16 v28, v6

    move-object/from16 v6, v36

    move-object/from16 v37, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v37

    move/from16 v38, v14

    move-object/from16 v14, v20

    move/from16 v20, v38

    move-object/from16 v39, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v39

    move/from16 v40, v10

    move/from16 v10, v24

    move/from16 v24, v40

    move-object/from16 v41, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v41

    move/from16 v42, v29

    move/from16 v29, v5

    move/from16 v5, v42

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    const/16 v30, 0x12

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v21

    const/16 v30, 0x15

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    const/16 v30, 0x14

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_12
    sget-object v23, Lcom/google/android/gms/internal/ig$g;->CREATOR:Lcom/google/android/gms/internal/ip;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v30, 0x17

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_13
    sget-object v22, Lcom/google/android/gms/internal/ig$f;->CREATOR:Lcom/google/android/gms/internal/io;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v30, 0x16

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v25

    const/16 v30, 0x19

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v24

    const/16 v30, 0x18

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_16
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v27

    const/16 v30, 0x1b

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_17
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v26

    const/16 v30, 0x1a

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_18
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v29

    const/16 v30, 0x1d

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :pswitch_19
    sget-object v28, Lcom/google/android/gms/internal/ig$h;->CREATOR:Lcom/google/android/gms/internal/iq;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v28

    const/16 v30, 0x1c

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v32, v29

    move/from16 v29, v5

    move/from16 v5, v32

    move-object/from16 v33, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v33

    move/from16 v34, v25

    move-object/from16 v25, v9

    move/from16 v9, v34

    move-object/from16 v35, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v35

    move/from16 v36, v21

    move-object/from16 v21, v13

    move/from16 v13, v36

    move-object/from16 v37, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v37

    move-object/from16 v38, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v38

    move/from16 v39, v14

    move-object/from16 v14, v20

    move/from16 v20, v39

    move-object/from16 v40, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v40

    move/from16 v41, v10

    move/from16 v10, v24

    move/from16 v24, v41

    move-object/from16 v42, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v42

    move-object/from16 v43, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v43

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v30

    move/from16 v0, v30

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
    new-instance v3, Lcom/google/android/gms/internal/ig;

    invoke-direct/range {v3 .. v29}, Lcom/google/android/gms/internal/ig;-><init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/ig$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ig$b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ig$c;ZLjava/lang/String;Lcom/google/android/gms/internal/ig$d;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_15
        :pswitch_14
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public bm(I)[Lcom/google/android/gms/internal/ig;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/ig;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ih;->au(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ig;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ih;->bm(I)[Lcom/google/android/gms/internal/ig;

    move-result-object v0

    return-object v0
.end method
