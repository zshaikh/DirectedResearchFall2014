.class public final enum Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
.super Ljava/lang/Enum;
.source "PHConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/configuration/PHConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

.field public static final enum MOBILE:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

.field public static final enum NO_NETWORK:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

.field public static final enum NO_PERMISSION:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

.field public static final enum WIFI:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_NETWORK:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    .line 55
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->MOBILE:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    .line 56
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->WIFI:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    .line 57
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    const-string v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v5}, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_PERMISSION:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_NETWORK:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->MOBILE:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->WIFI:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_PERMISSION:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    aput-object v1, v0, v5

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->$VALUES:[Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->$VALUES:[Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    invoke-virtual {v0}, [Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    return-object v0
.end method
