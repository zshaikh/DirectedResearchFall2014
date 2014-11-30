.class public final enum Lcom/voxel/sdk/StaticAsset;
.super Ljava/lang/Enum;
.source "StaticAsset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/sdk/StaticAsset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/sdk/StaticAsset;

.field public static final enum DIALOG_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

.field public static final enum GOOGLE_PLAY_ICON:Lcom/voxel/sdk/StaticAsset;

.field public static final enum INTERSTITIAL_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/voxel/sdk/StaticAsset;

    const-string v1, "INTERSTITIAL_CLOSE_BUTTON"

    const-string v2, "close_button.png"

    invoke-direct {v0, v1, v3, v2}, Lcom/voxel/sdk/StaticAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/voxel/sdk/StaticAsset;->INTERSTITIAL_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

    .line 5
    new-instance v0, Lcom/voxel/sdk/StaticAsset;

    const-string v1, "DIALOG_CLOSE_BUTTON"

    const-string v2, "dialog_close_button.png"

    invoke-direct {v0, v1, v4, v2}, Lcom/voxel/sdk/StaticAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/voxel/sdk/StaticAsset;->DIALOG_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

    .line 6
    new-instance v0, Lcom/voxel/sdk/StaticAsset;

    const-string v1, "GOOGLE_PLAY_ICON"

    const-string v2, "google_play_icon.png"

    invoke-direct {v0, v1, v5, v2}, Lcom/voxel/sdk/StaticAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/voxel/sdk/StaticAsset;->GOOGLE_PLAY_ICON:Lcom/voxel/sdk/StaticAsset;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/voxel/sdk/StaticAsset;

    sget-object v1, Lcom/voxel/sdk/StaticAsset;->INTERSTITIAL_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/sdk/StaticAsset;->DIALOG_CLOSE_BUTTON:Lcom/voxel/sdk/StaticAsset;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/sdk/StaticAsset;->GOOGLE_PLAY_ICON:Lcom/voxel/sdk/StaticAsset;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/sdk/StaticAsset;->$VALUES:[Lcom/voxel/sdk/StaticAsset;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/voxel/sdk/StaticAsset;->name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/sdk/StaticAsset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/voxel/sdk/StaticAsset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/sdk/StaticAsset;

    return-object p0
.end method

.method public static values()[Lcom/voxel/sdk/StaticAsset;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/voxel/sdk/StaticAsset;->$VALUES:[Lcom/voxel/sdk/StaticAsset;

    invoke-virtual {v0}, [Lcom/voxel/sdk/StaticAsset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/sdk/StaticAsset;

    return-object v0
.end method


# virtual methods
.method public getAssetKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "static_asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/sdk/StaticAsset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/voxel/sdk/StaticAsset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://s3-us-west-2.amazonaws.com/cloudvm-public/android-sdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/sdk/StaticAsset;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
