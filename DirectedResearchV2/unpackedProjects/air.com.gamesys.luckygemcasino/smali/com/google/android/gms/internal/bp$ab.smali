.class final Lcom/google/android/gms/internal/bp$ab;
.super Lcom/google/android/gms/internal/bp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ab"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$ab;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bp$a;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method
