.class final enum Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
.super Ljava/lang/Enum;
.source "SomoApptimiserTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoApptimiserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TrackerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

.field public static final enum INITIALISING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

.field public static final enum RUNNING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

.field public static final enum STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    const-string v1, "INITIALISING"

    invoke-direct {v0, v1, v2}, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->INITIALISING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 37
    new-instance v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->RUNNING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 38
    new-instance v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    sget-object v1, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->INITIALISING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->RUNNING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->$VALUES:[Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    return-object v0
.end method

.method public static values()[Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->$VALUES:[Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    invoke-virtual {v0}, [Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    return-object v0
.end method
