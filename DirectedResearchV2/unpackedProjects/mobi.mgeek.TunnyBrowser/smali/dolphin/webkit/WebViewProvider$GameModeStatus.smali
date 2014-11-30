.class public final enum Ldolphin/webkit/WebViewProvider$GameModeStatus;
.super Ljava/lang/Enum;
.source "WebViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/webkit/WebViewProvider$GameModeStatus;",
        ">;"
    }
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldolphin/webkit/WebViewProvider$GameModeStatus;

.field public static final enum AUTO_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

.field public static final enum GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

.field public static final enum NONE_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

.field public static final enum PENDING_DECISION:Ldolphin/webkit/WebViewProvider$GameModeStatus;

.field public static final enum POTENTIAL_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    const-string v1, "POTENTIAL_GAME_MODE"

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/WebViewProvider$GameModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->POTENTIAL_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 69
    new-instance v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    const-string v1, "PENDING_DECISION"

    invoke-direct {v0, v1, v3}, Ldolphin/webkit/WebViewProvider$GameModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->PENDING_DECISION:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 70
    new-instance v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    const-string v1, "GAME_MODE"

    invoke-direct {v0, v1, v4}, Ldolphin/webkit/WebViewProvider$GameModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 71
    new-instance v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    const-string v1, "NONE_GAME_MODE"

    invoke-direct {v0, v1, v5}, Ldolphin/webkit/WebViewProvider$GameModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->NONE_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 72
    new-instance v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    const-string v1, "AUTO_GAME_MODE"

    invoke-direct {v0, v1, v6}, Ldolphin/webkit/WebViewProvider$GameModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->AUTO_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ldolphin/webkit/WebViewProvider$GameModeStatus;

    sget-object v1, Ldolphin/webkit/WebViewProvider$GameModeStatus;->POTENTIAL_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/webkit/WebViewProvider$GameModeStatus;->PENDING_DECISION:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/webkit/WebViewProvider$GameModeStatus;->GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    aput-object v1, v0, v4

    sget-object v1, Ldolphin/webkit/WebViewProvider$GameModeStatus;->NONE_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    aput-object v1, v0, v5

    sget-object v1, Ldolphin/webkit/WebViewProvider$GameModeStatus;->AUTO_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    aput-object v1, v0, v6

    sput-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->$VALUES:[Ldolphin/webkit/WebViewProvider$GameModeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/webkit/WebViewProvider$GameModeStatus;
    .locals 1

    .prologue
    .line 66
    const-class v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;

    return-object v0
.end method

.method public static values()[Ldolphin/webkit/WebViewProvider$GameModeStatus;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->$VALUES:[Ldolphin/webkit/WebViewProvider$GameModeStatus;

    invoke-virtual {v0}, [Ldolphin/webkit/WebViewProvider$GameModeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldolphin/webkit/WebViewProvider$GameModeStatus;

    return-object v0
.end method
