.class public final enum Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum FAILED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

.field public static final enum PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

.field public static final enum PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

.field public static final enum STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

.field private static final synthetic a:[Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->FAILED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->FAILED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->a:[Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;
    .locals 1

    const-class v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->a:[Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-virtual {v0}, [Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    return-object v0
.end method
