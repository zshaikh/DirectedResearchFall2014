.class public final enum Lcom/nativex/monetization/enums/NativeXAdPlacement;
.super Ljava/lang/Enum;
.source "NativeXAdPlacement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/enums/NativeXAdPlacement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Exit_Ad_From_Application:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Game_Launch:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Level_Completed:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Level_Failed:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Main_Menu_Screen:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum P2P_Competition_Lost:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum P2P_Competition_Won:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Pause_Menu_Screen:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Player_Generated_Event:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Player_Levels_Up:Lcom/nativex/monetization/enums/NativeXAdPlacement;

.field public static final enum Store_Open:Lcom/nativex/monetization/enums/NativeXAdPlacement;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Exit_Ad_From_Application"

    const-string v2, "Exit Ad from Application"

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Exit_Ad_From_Application:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 37
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Game_Launch"

    const-string v2, "Game Launch"

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Game_Launch:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 38
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Main_Menu_Screen"

    const-string v2, "Main Menu Screen"

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Main_Menu_Screen:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 39
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Level_Completed"

    const-string v2, "Level Completed"

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Level_Completed:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 40
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Level_Failed"

    const-string v2, "Level Failed"

    invoke-direct {v0, v1, v8, v2}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Level_Failed:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 41
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Pause_Menu_Screen"

    const/4 v2, 0x5

    const-string v3, "Pause Menu Screen"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Pause_Menu_Screen:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 42
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Player_Levels_Up"

    const/4 v2, 0x6

    const-string v3, "Player Levels Up"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Player_Levels_Up:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 43
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Player_Generated_Event"

    const/4 v2, 0x7

    const-string v3, "Player Generated Event"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Player_Generated_Event:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 44
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "P2P_Competition_Won"

    const/16 v2, 0x8

    const-string v3, "P2P competition won"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->P2P_Competition_Won:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 45
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "P2P_Competition_Lost"

    const/16 v2, 0x9

    const-string v3, "P2P competition lost"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->P2P_Competition_Lost:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 46
    new-instance v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    const-string v1, "Store_Open"

    const/16 v2, 0xa

    const-string v3, "Store Open"

    invoke-direct {v0, v1, v2, v3}, Lcom/nativex/monetization/enums/NativeXAdPlacement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Store_Open:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nativex/monetization/enums/NativeXAdPlacement;

    sget-object v1, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Exit_Ad_From_Application:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Game_Launch:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Main_Menu_Screen:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Level_Completed:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Level_Failed:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Pause_Menu_Screen:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Player_Levels_Up:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Player_Generated_Event:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nativex/monetization/enums/NativeXAdPlacement;->P2P_Competition_Won:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nativex/monetization/enums/NativeXAdPlacement;->P2P_Competition_Lost:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nativex/monetization/enums/NativeXAdPlacement;->Store_Open:Lcom/nativex/monetization/enums/NativeXAdPlacement;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->$VALUES:[Lcom/nativex/monetization/enums/NativeXAdPlacement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/enums/NativeXAdPlacement;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/enums/NativeXAdPlacement;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->$VALUES:[Lcom/nativex/monetization/enums/NativeXAdPlacement;

    invoke-virtual {v0}, [Lcom/nativex/monetization/enums/NativeXAdPlacement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/enums/NativeXAdPlacement;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nativex/monetization/enums/NativeXAdPlacement;->name:Ljava/lang/String;

    return-object v0
.end method
