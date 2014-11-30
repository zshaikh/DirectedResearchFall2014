.class public final Lcom/google/android/gms/games/leaderboard/c;
.super Ljava/lang/Object;


# instance fields
.field private final vJ:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/c;->vJ:Landroid/os/Bundle;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public dr()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/c;->vJ:Landroid/os/Bundle;

    return-object v0
.end method
