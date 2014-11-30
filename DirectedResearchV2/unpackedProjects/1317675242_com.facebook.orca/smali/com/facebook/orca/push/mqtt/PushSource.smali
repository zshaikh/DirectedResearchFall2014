.class public final enum Lcom/facebook/orca/push/mqtt/PushSource;
.super Ljava/lang/Enum;
.source "PushSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/push/mqtt/PushSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/push/mqtt/PushSource;

.field public static final enum C2DM:Lcom/facebook/orca/push/mqtt/PushSource;

.field public static final enum MQTT:Lcom/facebook/orca/push/mqtt/PushSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushSource;

    const-string v1, "C2DM"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/push/mqtt/PushSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushSource;->C2DM:Lcom/facebook/orca/push/mqtt/PushSource;

    .line 10
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushSource;

    const-string v1, "MQTT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/push/mqtt/PushSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushSource;->MQTT:Lcom/facebook/orca/push/mqtt/PushSource;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/push/mqtt/PushSource;

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushSource;->C2DM:Lcom/facebook/orca/push/mqtt/PushSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushSource;->MQTT:Lcom/facebook/orca/push/mqtt/PushSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushSource;->$VALUES:[Lcom/facebook/orca/push/mqtt/PushSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/PushSource;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/push/mqtt/PushSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/mqtt/PushSource;

    return-object p0
.end method

.method public static values()[Lcom/facebook/orca/push/mqtt/PushSource;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/push/mqtt/PushSource;->$VALUES:[Lcom/facebook/orca/push/mqtt/PushSource;

    invoke-virtual {v0}, [Lcom/facebook/orca/push/mqtt/PushSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/push/mqtt/PushSource;

    return-object v0
.end method
