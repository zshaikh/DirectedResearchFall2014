.class public final enum Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;
.super Ljava/lang/Enum;
.source "TrackerAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

.field public static final enum START:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

.field public static final enum STOP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

.field public static final enum TRACK_SALE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

.field public static final enum TRACK_SALE_VALUE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

.field public static final enum TRACK_SIGN_UP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;


# instance fields
.field public final requireNonNullTrackerInstance:Z

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    const-string v1, "START"

    .line 12
    invoke-direct {v0, v1, v4, v6, v4}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->START:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    .line 14
    new-instance v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    const-string v1, "TRACK_SALE"

    .line 15
    invoke-direct {v0, v1, v7, v5}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    .line 17
    new-instance v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    const-string v1, "TRACK_SALE_VALUE"

    .line 18
    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE_VALUE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    .line 20
    new-instance v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    const-string v1, "TRACK_SIGN_UP"

    const/4 v2, 0x3

    .line 21
    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SIGN_UP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    .line 23
    new-instance v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    const-string v1, "STOP"

    .line 24
    invoke-direct {v0, v1, v5, v6}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->STOP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->START:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE_VALUE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SIGN_UP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    aput-object v2, v0, v1

    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->STOP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ENUM$VALUES:[Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "trackerValue"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;-><init>(Ljava/lang/String;IIZ)V

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "trackerValue"    # I
    .param p4, "notNullInstance"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->value:I

    .line 39
    iput-boolean p4, p0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->requireNonNullTrackerInstance:Z

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ENUM$VALUES:[Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
