.class final Lcom/google/android/gms/internal/bp$af;
.super Lcom/google/android/gms/internal/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "af"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/bu;",
        ">.c<",
        "Lcom/google/android/gms/games/OnPlayersLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnPlayersLoadedListener;Lcom/google/android/gms/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$af;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/u$c;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/OnPlayersLoadedListener;Lcom/google/android/gms/internal/l;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/l;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v1, p2}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/OnPlayersLoadedListener;->onPlayersLoaded(ILcom/google/android/gms/games/PlayerBuffer;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/OnPlayersLoadedListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/bp$af;->a(Lcom/google/android/gms/games/OnPlayersLoadedListener;Lcom/google/android/gms/internal/l;)V

    return-void
.end method
