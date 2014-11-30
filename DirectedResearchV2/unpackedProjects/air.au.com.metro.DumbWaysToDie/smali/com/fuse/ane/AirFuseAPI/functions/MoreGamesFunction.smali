.class public Lcom/fuse/ane/AirFuseAPI/functions/MoreGamesFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    new-instance v0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    invoke-direct {v0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;-><init>()V

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->displayMoreGames(Lcom/fusepowered/activities/FuseApiBrowser;)V

    const/4 v0, 0x0

    return-object v0
.end method
