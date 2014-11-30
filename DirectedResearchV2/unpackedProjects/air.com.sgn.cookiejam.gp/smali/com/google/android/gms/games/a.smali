.class public Lcom/google/android/gms/games/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/GameEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/games/GameEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isPlayEnabledGame()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isInstanceInstalled()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getInstancePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getGameplayAclStatus()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getAchievementTotalCount()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getLeaderboardCount()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isTurnBasedMultiplayerEnabled()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isRealTimeMultiplayerEnabled()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public Y(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
    .locals 33

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v22

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    :goto_1
    move/from16 v24, v4

    move/from16 v4, v21

    move/from16 v21, v24

    move/from16 v25, v6

    move-object/from16 v6, v19

    move/from16 v19, v25

    move/from16 v26, v8

    move-object/from16 v8, v17

    move/from16 v17, v26

    move/from16 v27, v10

    move-object v10, v15

    move/from16 v15, v27

    move-object/from16 v28, v12

    move-object v12, v13

    move-object/from16 v13, v28

    move-object/from16 v29, v14

    move v14, v11

    move-object/from16 v11, v29

    move-object/from16 v30, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v30

    move-object/from16 v31, v18

    move/from16 v18, v7

    move-object/from16 v7, v31

    move-object/from16 v32, v20

    move/from16 v20, v5

    move-object/from16 v5, v32

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_6
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move v11, v14

    move-object/from16 v14, p0

    move/from16 v24, v19

    move-object/from16 v19, v6

    move/from16 v6, v24

    move/from16 v25, v17

    move-object/from16 v17, v8

    move/from16 v8, v25

    move/from16 v26, v15

    move-object v15, v10

    move/from16 v10, v26

    move-object/from16 v27, v13

    move-object v13, v12

    move-object/from16 v12, v27

    move/from16 v28, v20

    move-object/from16 v20, v5

    move/from16 v5, v28

    move-object/from16 v29, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v29

    move-object/from16 v30, v7

    move/from16 v7, v18

    move-object/from16 v18, v30

    move/from16 v31, v21

    move/from16 v21, v4

    move/from16 v4, v31

    goto/16 :goto_1

    :sswitch_7
    sget-object v12, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move-object v12, v13

    move-object/from16 v13, p0

    move/from16 v24, v19

    move-object/from16 v19, v6

    move/from16 v6, v24

    move/from16 v25, v17

    move-object/from16 v17, v8

    move/from16 v8, v25

    move/from16 v26, v15

    move-object v15, v10

    move/from16 v10, v26

    move/from16 v27, v21

    move/from16 v21, v4

    move/from16 v4, v27

    move-object/from16 v28, v11

    move v11, v14

    move-object/from16 v14, v28

    move-object/from16 v29, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v29

    move-object/from16 v30, v7

    move/from16 v7, v18

    move-object/from16 v18, v30

    move-object/from16 v31, v5

    move/from16 v5, v20

    move-object/from16 v20, v31

    goto/16 :goto_1

    :sswitch_8
    sget-object v13, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move-object v13, v12

    move-object/from16 v12, p0

    move/from16 v24, v19

    move-object/from16 v19, v6

    move/from16 v6, v24

    move/from16 v25, v17

    move-object/from16 v17, v8

    move/from16 v8, v25

    move/from16 v26, v15

    move-object v15, v10

    move/from16 v10, v26

    move/from16 v27, v20

    move-object/from16 v20, v5

    move/from16 v5, v27

    move-object/from16 v28, v11

    move v11, v14

    move-object/from16 v14, v28

    move-object/from16 v29, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v29

    move-object/from16 v30, v7

    move/from16 v7, v18

    move-object/from16 v18, v30

    move/from16 v31, v21

    move/from16 v21, v4

    move/from16 v4, v31

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v15

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v17

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v18

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v19

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v21

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v20

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v24, v21

    move/from16 v21, v4

    move/from16 v4, v24

    move/from16 v25, v19

    move-object/from16 v19, v6

    move/from16 v6, v25

    move/from16 v26, v17

    move-object/from16 v17, v8

    move/from16 v8, v26

    move/from16 v27, v15

    move-object v15, v10

    move/from16 v10, v27

    move-object/from16 v28, v13

    move-object v13, v12

    move-object/from16 v12, v28

    move-object/from16 v29, v11

    move v11, v14

    move-object/from16 v14, v29

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v31, v7

    move/from16 v7, v18

    move-object/from16 v18, v31

    move-object/from16 v32, v5

    move/from16 v5, v20

    move-object/from16 v20, v32

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v22

    move/from16 v0, v22

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
    new-instance v3, Lcom/google/android/gms/games/GameEntity;

    invoke-direct/range {v3 .. v21}, Lcom/google/android/gms/games/GameEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZ)V

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
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x3e8 -> :sswitch_11
    .end sparse-switch
.end method

.method public az(I)[Lcom/google/android/gms/games/GameEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/a;->Y(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/a;->az(I)[Lcom/google/android/gms/games/GameEntity;

    move-result-object v0

    return-object v0
.end method
