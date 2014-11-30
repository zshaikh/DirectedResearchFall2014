.class final enum Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;
.super Ljava/lang/Enum;
.source "BridgeMMMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

.field public static final enum READY:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

.field public static final enum RECORDING:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;


# instance fields
.field private _state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    const-string v1, "RECORDING"

    const-string v2, "recording"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->RECORDING:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    new-instance v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->READY:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    sget-object v1, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->RECORDING:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->READY:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->$VALUES:[Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->_state:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    const-class v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->$VALUES:[Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    invoke-virtual {v0}, [Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    return-object v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->_state:Ljava/lang/String;

    return-object v0
.end method
