.class public Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;",
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

.method static a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getMatchId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getCreationTimestamp()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getLastUpdaterId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getPendingParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getStatus()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getVariant()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getVersion()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getData()[B

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getRematchId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getPreviousMatchData()[B

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getMatchNumber()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->isLocallyModified()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;->getTurnStatus()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
    .locals 37
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

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

    .end local p0    # "this":Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v25

    move/from16 v0, v25

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/common/internal/safeparcel/a;->M(I)I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    :goto_1
    move/from16 v27, v4

    move/from16 v4, v24

    move/from16 v24, v27

    move-object/from16 v28, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v28

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-wide/from16 v8, v19

    move-object/from16 v20, v29

    move-object/from16 v19, v30

    move-object/from16 v31, v11

    move/from16 v32, v12

    move-wide/from16 v11, v16

    move-object/from16 v17, v31

    move/from16 v16, v32

    move-object/from16 v33, v15

    move v15, v13

    move-object/from16 v13, v33

    move-object/from16 v34, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v34

    move-object/from16 v35, v21

    move/from16 v21, v7

    move-object/from16 v7, v35

    move-object/from16 v36, v23

    move/from16 v23, v5

    move-object/from16 v5, v36

    goto/16 :goto_0

    :sswitch_0
    sget-object v5, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/GameEntity;

    move/from16 v5, v23

    move-object/from16 v23, p0

    move-object/from16 v27, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v27

    move-object/from16 v28, v20

    move-object/from16 v29, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v30, v17

    move/from16 v31, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v30

    move/from16 v12, v31

    move-object/from16 v32, v13

    move v13, v15

    move-object/from16 v15, v32

    move-object/from16 v33, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v33

    move-object/from16 v34, v7

    move/from16 v7, v21

    move-object/from16 v21, v34

    move/from16 v35, v24

    move/from16 v24, v4

    move/from16 v4, v35

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v8

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v11

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v15

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v16

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)[B

    move-result-object v17

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_b
    sget-object v18, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)[B

    move-result-object v20

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v22

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v21

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v24

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v23

    move/from16 v27, v24

    move/from16 v24, v4

    move/from16 v4, v27

    move-object/from16 v28, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v29, v20

    move-object/from16 v30, v19

    move-wide/from16 v19, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v31, v17

    move/from16 v32, v16

    move-wide/from16 v16, v11

    move-object/from16 v11, v31

    move/from16 v12, v32

    move-object/from16 v33, v13

    move v13, v15

    move-object/from16 v15, v33

    move-object/from16 v34, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v34

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v21, v35

    move-object/from16 v36, v5

    move/from16 v5, v23

    move-object/from16 v23, v36

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v25

    move/from16 v0, v25

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
    new-instance v3, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    invoke-direct/range {v3 .. v24}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;III[BLjava/util/ArrayList;Ljava/lang/String;[BILandroid/os/Bundle;IZ)V

    return-object v3

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
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_f
        0x11 -> :sswitch_e
        0x12 -> :sswitch_12
        0x13 -> :sswitch_11
        0x3e8 -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntityCreator;->newArray(I)[Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchEntity;

    move-result-object v0

    return-object v0
.end method
