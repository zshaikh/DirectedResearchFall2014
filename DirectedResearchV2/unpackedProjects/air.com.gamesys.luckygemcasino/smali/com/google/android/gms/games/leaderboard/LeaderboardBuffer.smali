.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
.super Lcom/google/android/gms/internal/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/n",
        "<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;)V
    .locals 0
    .param p1, "dataHolder"    # Lcom/google/android/gms/internal/l;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/n;-><init>(Lcom/google/android/gms/internal/l;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getEntry(II)Lcom/google/android/gms/games/leaderboard/Leaderboard;

    move-result-object v0

    return-object v0
.end method

.method protected getEntry(II)Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "numChildren"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/bz;

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->N:Lcom/google/android/gms/internal/l;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/bz;-><init>(Lcom/google/android/gms/internal/l;II)V

    return-object v0
.end method

.method protected getPrimaryDataMarkerColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "external_leaderboard_id"

    return-object v0
.end method
