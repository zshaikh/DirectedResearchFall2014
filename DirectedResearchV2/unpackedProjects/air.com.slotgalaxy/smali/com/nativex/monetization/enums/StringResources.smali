.class public final enum Lcom/nativex/monetization/enums/StringResources;
.super Ljava/lang/Enum;
.source "StringResources.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/StringResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/StringResources;

.field public static final enum NO_NETWORK_CONNECTIVITY:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum NO_NETWORK_DIALOG_CONNECT:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum PROGRESS_DIALOG_LOADING:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum UPGRADE_DIALOG_TEXT_CURRENCY:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum UPGRADE_DIALOG_TEXT_FREE:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum UPGRADE_DIALOG_TEXT_THIS_APP:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum UPGRADE_DIALOG_TITLE_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum UPGRADE_DIALOG_UPGRADE_BUTTON:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum UPGRADE_DIALOG_USER_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum VIDEO_CANNOT_BE_PLAYED:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum VIDEO_MEDIA_PLAYER_ERROR:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum VIDEO_PLAYER_CONTROLS_HINT:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum VIDEO_SERVER_ERROR:Lcom/nativex/monetization/enums/StringResources;

.field public static final enum VIDEO_UKNOWN_ERROR:Lcom/nativex/monetization/enums/StringResources;

.field private static id:I


# instance fields
.field private key:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 25
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "VIDEO_PLAYER_CONTROLS_HINT"

    const-string v2, "complex_video_player_controls_hint"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->VIDEO_PLAYER_CONTROLS_HINT:Lcom/nativex/monetization/enums/StringResources;

    .line 26
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "VIDEO_CANNOT_BE_PLAYED"

    const-string v2, "complex_video_cannot_be_played"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->VIDEO_CANNOT_BE_PLAYED:Lcom/nativex/monetization/enums/StringResources;

    .line 27
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "VIDEO_SERVER_ERROR"

    const-string v2, "complex_video_server_error"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->VIDEO_SERVER_ERROR:Lcom/nativex/monetization/enums/StringResources;

    .line 28
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "VIDEO_UKNOWN_ERROR"

    const-string v2, "complex_video_unknown_error"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->VIDEO_UKNOWN_ERROR:Lcom/nativex/monetization/enums/StringResources;

    .line 29
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "VIDEO_MEDIA_PLAYER_ERROR"

    const-string v2, "complex_video_media_player_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->VIDEO_MEDIA_PLAYER_ERROR:Lcom/nativex/monetization/enums/StringResources;

    .line 32
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "NO_NETWORK_CONNECTIVITY"

    const/4 v2, 0x5

    const-string v3, "no_network_connectivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->NO_NETWORK_CONNECTIVITY:Lcom/nativex/monetization/enums/StringResources;

    .line 33
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "NO_NETWORK_DIALOG_CONNECT"

    const/4 v2, 0x6

    const-string v3, "no_network_dialog_connect"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->NO_NETWORK_DIALOG_CONNECT:Lcom/nativex/monetization/enums/StringResources;

    .line 36
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "UPGRADE_DIALOG_TEXT_CURRENCY"

    const/4 v2, 0x7

    const-string v3, "upgrade_dialog_text_currency"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_CURRENCY:Lcom/nativex/monetization/enums/StringResources;

    .line 37
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "UPGRADE_DIALOG_TEXT_THIS_APP"

    const/16 v2, 0x8

    const-string v3, "upgrade_dialog_text_this_app"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_THIS_APP:Lcom/nativex/monetization/enums/StringResources;

    .line 38
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "UPGRADE_DIALOG_TEXT_FREE"

    const/16 v2, 0x9

    const-string v3, "upgrade_dialog_text_free"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_FREE:Lcom/nativex/monetization/enums/StringResources;

    .line 39
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "UPGRADE_DIALOG_TITLE_MESSAGE"

    const/16 v2, 0xa

    const-string v3, "upgrade_dialog_title_message"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TITLE_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

    .line 40
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "UPGRADE_DIALOG_USER_MESSAGE"

    const/16 v2, 0xb

    const-string v3, "upgrade_dialog_user_message"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_USER_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

    .line 41
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "UPGRADE_DIALOG_UPGRADE_BUTTON"

    const/16 v2, 0xc

    const-string v3, "upgrade_dialog_upgrade_button"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_UPGRADE_BUTTON:Lcom/nativex/monetization/enums/StringResources;

    .line 44
    new-instance v0, Lcom/nativex/monetization/enums/StringResources;

    const-string v1, "PROGRESS_DIALOG_LOADING"

    const/16 v2, 0xd

    const-string v3, "progress_dialog_loading"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->PROGRESS_DIALOG_LOADING:Lcom/nativex/monetization/enums/StringResources;

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/nativex/monetization/enums/StringResources;

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->VIDEO_PLAYER_CONTROLS_HINT:Lcom/nativex/monetization/enums/StringResources;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->VIDEO_CANNOT_BE_PLAYED:Lcom/nativex/monetization/enums/StringResources;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->VIDEO_SERVER_ERROR:Lcom/nativex/monetization/enums/StringResources;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->VIDEO_UKNOWN_ERROR:Lcom/nativex/monetization/enums/StringResources;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/enums/StringResources;->VIDEO_MEDIA_PLAYER_ERROR:Lcom/nativex/monetization/enums/StringResources;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->NO_NETWORK_CONNECTIVITY:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->NO_NETWORK_DIALOG_CONNECT:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_CURRENCY:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_THIS_APP:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TEXT_FREE:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_TITLE_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_USER_MESSAGE:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->UPGRADE_DIALOG_UPGRADE_BUTTON:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nativex/monetization/enums/StringResources;->PROGRESS_DIALOG_LOADING:Lcom/nativex/monetization/enums/StringResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/enums/StringResources;->$VALUES:[Lcom/nativex/monetization/enums/StringResources;

    .line 48
    sput v4, Lcom/nativex/monetization/enums/StringResources;->id:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "xmlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/enums/StringResources;->key:Ljava/lang/Integer;

    .line 53
    iput-object p3, p0, Lcom/nativex/monetization/enums/StringResources;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/StringResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/StringResources;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/StringResources;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nativex/monetization/enums/StringResources;->$VALUES:[Lcom/nativex/monetization/enums/StringResources;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/StringResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/StringResources;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nativex/monetization/enums/StringResources;->key:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 58
    sget v0, Lcom/nativex/monetization/enums/StringResources;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/enums/StringResources;->key:Ljava/lang/Integer;

    .line 59
    sget v0, Lcom/nativex/monetization/enums/StringResources;->id:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nativex/monetization/enums/StringResources;->id:I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/enums/StringResources;->key:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nativex/monetization/enums/StringResources;->name:Ljava/lang/String;

    return-object v0
.end method
