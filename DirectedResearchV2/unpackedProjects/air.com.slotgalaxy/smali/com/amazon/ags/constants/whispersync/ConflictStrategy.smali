.class public final enum Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
.super Ljava/lang/Enum;
.source "ConflictStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/ags/constants/whispersync/ConflictStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

.field public static final enum AUTO_RESOLVE_TO_CLOUD:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

.field public static final enum AUTO_RESOLVE_TO_IGNORE:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

.field public static final enum PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    const-string v1, "PLAYER_SELECT"

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 24
    new-instance v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    const-string v1, "AUTO_RESOLVE_TO_CLOUD"

    invoke-direct {v0, v1, v3}, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_CLOUD:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 31
    new-instance v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    const-string v1, "AUTO_RESOLVE_TO_IGNORE"

    invoke-direct {v0, v1, v4}, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_IGNORE:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sget-object v1, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_CLOUD:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_IGNORE:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->$VALUES:[Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->$VALUES:[Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    invoke-virtual {v0}, [Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-object v0
.end method
