.class public final enum Lcom/fusepowered/m1/android/NVASpeechKit$State;
.super Ljava/lang/Enum;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m1/android/NVASpeechKit$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m1/android/NVASpeechKit$State;

.field public static final enum ERROR:Lcom/fusepowered/m1/android/NVASpeechKit$State;

.field public static final enum PROCESSING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

.field public static final enum READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

.field public static final enum RECORDING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

.field public static final enum VOCALIZING:Lcom/fusepowered/m1/android/NVASpeechKit$State;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/m1/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->ERROR:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    const-string v1, "VOCALIZING"

    const-string v2, "vocalizing"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m1/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->VOCALIZING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    const-string v1, "RECORDING"

    const-string v2, "recording"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/m1/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->RECORDING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/m1/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    new-instance v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    const-string v1, "PROCESSING"

    const-string v2, "processing"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/m1/android/NVASpeechKit$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->PROCESSING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/m1/android/NVASpeechKit$State;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->ERROR:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->VOCALIZING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->RECORDING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->PROCESSING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->$VALUES:[Lcom/fusepowered/m1/android/NVASpeechKit$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m1/android/NVASpeechKit$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/android/NVASpeechKit$State;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m1/android/NVASpeechKit$State;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->$VALUES:[Lcom/fusepowered/m1/android/NVASpeechKit$State;

    invoke-virtual {v0}, [Lcom/fusepowered/m1/android/NVASpeechKit$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m1/android/NVASpeechKit$State;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$State;->name:Ljava/lang/String;

    return-object v0
.end method
