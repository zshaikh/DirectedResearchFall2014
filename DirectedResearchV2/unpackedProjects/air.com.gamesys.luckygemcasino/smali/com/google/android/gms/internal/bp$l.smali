.class final Lcom/google/android/gms/internal/bp$l;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "l"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dJ:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$l;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bp$l;->dJ:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    return-void
.end method


# virtual methods
.method public k(Lcom/google/android/gms/internal/l;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->close()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/bp$l;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v2, Lcom/google/android/gms/internal/bp$m;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$l;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v4, p0, Lcom/google/android/gms/internal/bp$l;->dJ:Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/bp$m;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;Lcom/google/android/gms/games/multiplayer/Invitation;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->close()V

    throw v0
.end method
