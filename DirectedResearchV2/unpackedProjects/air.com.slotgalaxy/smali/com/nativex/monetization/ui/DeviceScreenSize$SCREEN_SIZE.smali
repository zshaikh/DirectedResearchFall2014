.class public final enum Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;
.super Ljava/lang/Enum;
.source "DeviceScreenSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/ui/DeviceScreenSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCREEN_SIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

.field public static final enum EXTRA_LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

.field public static final enum LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

.field public static final enum NORMAL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

.field public static final enum SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

.field public static final enum UNKNOWN:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;


# instance fields
.field private screenSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->UNKNOWN:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 35
    new-instance v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    const-string v1, "SMALL"

    const/high16 v2, 0x40600000

    invoke-direct {v0, v1, v4, v2}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 36
    new-instance v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    const-string v1, "NORMAL"

    const/high16 v2, 0x40b00000

    invoke-direct {v0, v1, v5, v2}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->NORMAL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 37
    new-instance v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    const-string v1, "LARGE"

    const v2, 0x40e33333

    invoke-direct {v0, v1, v6, v2}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 38
    new-instance v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    const-string v1, "EXTRA_LARGE"

    const v2, 0x4121999a

    invoke-direct {v0, v1, v7, v2}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->EXTRA_LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->UNKNOWN:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->NORMAL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->EXTRA_LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->$VALUES:[Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->screenSize:F

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->$VALUES:[Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    invoke-virtual {v0}, [Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    return-object v0
.end method


# virtual methods
.method public getSize()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->screenSize:F

    return v0
.end method
